/* eslint-disable valid-jsdoc */
/* eslint-disable radix */
var querydb = require('../utils/querydb');
var upload = require('../utils/fileupload_util');
var util = require('../utils/util');  //引入加密工具文件

/**
 * 跳转到用户添加
 */
exports.addtest = async function (req, res) {
    console.log('hello>>>>>>');
    // 查询用户类型
    var sql = 'SELECT tid, tname FROM user_type';
    var userTypes = await querydb(sql);
    console.log(JSON.stringify(userTypes));
    res.render('user/user_add', {
        types: userTypes,
    });
};

/**
 * 跳转到添加商品
 */
exports.addtests = async function (req, res) {
    console.log('hello>>>>>>');
    // 查询用户类型
    var sql = 'SELECT tid, tname FROM user_type';
    var userTypes = await querydb(sql);
    console.log(JSON.stringify(userTypes));
    res.render('user/user_adb', {
        types: userTypes,
    });
};

/**
 * 异步检查用户名是否已经存在 AJAX
 */
exports.checkUser = async function (req, res, next) {
    console.log('接收到Axja请求 >>> ');
    var username = req.body.username;
    console.log('checkUser >>> ' + username);
    var sql = 'SELECT count(*) AS count  FROM user WHERE username = ?';
    var data = await querydb(sql, [username]);
    var num = data[0].count;
    // 判断用户名是否存在
    if (num !== 0) {
        res.send({
            code: 1,
            msg: '用户名已经存在 !',
        });
    } else {
        res.send({
            code: 0,
        });
    }
};


/**
 * 注册用户提交
 */
exports.register = async function (req, res, next) {
    var userName = req.body.clientname;
    var passWord = req.body.password;

    // md5加密password
    var psw = util.md5(passWord);

    try {
        var sql = 'INSERT INTO user (username,password,headerurl)VALUES (?,?,?)';
        var paramers = [userName, psw, req.session.headerimg];
        console.log(paramers);
        await querydb(sql, paramers);
        res.render('login', {
            'message': '注册成功！',
        });
    } catch (error) {
        next(error);
    }

};

/**
 * 添加用户提交
 * 头像上传使用 upload.single('headerimg')
 */
exports.addSubmit =async function (req, res, next) {
    var userName = req.body.clientname;//这里的clientname等于add.html里面的name="clientname"
    var passWord = req.body.password;

    // md5加密password
    var psw = util.md5(passWord);

    try {
        var sql = 'INSERT INTO user (username,password,headerurl)VALUES (?,?,?)';
        var paramers = [userName, psw, req.session.headerimg];

        await querydb(sql, paramers);
        res.redirect('/list.do');
    } catch (error) {
        next(error);
    }

};

/**
 * 用户列表
 * 分页实现
 */
exports.list = async function (req, res, next) {
    var pageCount = 0; // 总页数
    var pageSize = 5; // 每页5条记录
    var currentPage = 1; // 当前页
    if (req.query.pageNo) {
        currentPage = req.query.pageNo;
    }
    try {
        var sqlCount = 'SELECT count(*) AS count FROM user';
        var totalCount = await querydb(sqlCount);
        var total = totalCount[0].count;

        if (total % pageSize === 0) {
            pageCount = parseInt(total / pageSize);
        } else {
            pageCount = parseInt(total / pageSize) + 1;
        }

        var startIndex = (currentPage - 1) * pageSize; // 计算偏移量
        var sql = 'SELECT id,username,password,headerurl FROM user ORDER BY id DESC limit ?, ?';
                                                                    // ORDER BY id DESC让列表从后到前的显示 20--1。
        var paramers = [startIndex, pageSize];
        var userList = await querydb(sql, paramers);

        res.render('user/user_list', {
            'userLists': userList,
            'currentPage': currentPage,
            'pageCount': pageCount,
        });
    } catch (err) {
        console.log(err);
        next(err);
    }
};

/**
 * 商品列表
 * 分页实现
 */
exports.lists = async function (req, res, next) {
    var pageCount = 0; // 总页数
    var pageSize = 5; // 每页5条记录
    var currentPage = 1; // 当前页
    if (req.query.pageNo) {
        currentPage = req.query.pageNo;
    }
    try {
        var sqlCount = 'SELECT count(*) AS count FROM commodity';
        var totalCount = await querydb(sqlCount);
        var total = totalCount[0].count;

        if (total % pageSize === 0) {
            pageCount = parseInt(total / pageSize);
        } else {
            pageCount = parseInt(total / pageSize) + 1;
        }

        var startIndex = (currentPage - 1) * pageSize; // 计算偏移量
        var sql = 'SELECT id,merchandise,username,password,original,headerurl FROM commodity limit ?, ?';
        var paramers = [startIndex, pageSize];
        var userList = await querydb(sql, paramers);

        res.render('user/user_lists', {
            'userLists': userList,
            'currentPage': currentPage,
            'pageCount': pageCount,
        });
    } catch (err) {
        console.log(err);
        next(err);
    }
};

/**
 * 删除用户
 */
exports.delete = async function (req, res, next) {
    // 接收get请求参数
    var id = req.query.uid;
    var sql = 'DELETE FROM user WHERE id = ?';
    var parameters = [id];
    try {
        await querydb(sql, parameters);
    } catch (err) {
        next(err);
    }

    res.redirect('/list.do');
};

/**
 * 根据ID查询用户跳转到修改
 */
exports.find = async function (req, res, next) {
    // 接收get请求参数
    // var id = req.params.uid;
    var id = req.query.uid;
    var sql = 'SELECT id,username,password FROM user WHERE id = ?';
    var parameters = [id];

    try {
        // 可能发生异常
        var data = await querydb(sql, parameters);
        res.render('user/user_update', data[0]);

    } catch (err) {
        // 处理异常
        next(err);
    }

};

/**
 * 修改用户提交
 */
exports.update = async function (req, res, next) {
    var username = req.body.clientname;
    var password = req.body.password;
    var id = req.body.uid;

    // md5加密password
    var psw = util.md5(password);
    var parametes = [username, psw, id];

    var sql = 'UPDATE user SET username = ?, password = ? WHERE id = ?';
    try {
        await querydb(sql, parametes);
        res.redirect('/list.do');
    } catch (err) {
        next(err);
    }

};

/**
 * 渲染用户类型页面
 */
exports.userType = function (req, res, next) {
    res.render('user/user_type');
};

/**
* 添加用户类型到数据库
*/

exports.addUserTypeSubmit = async function (req, res, next) {
    var type = req.body.usertype;
    var sql = 'INSERT INTO user_type (tname)VALUES(?)';
    await querydb(sql, [type]);
    res.send('添加用户类型成功');
};
