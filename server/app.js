const express = require("express")
const cors = require("cors")
const mysql = require('mysql') 
const session = require("express-session")
var server = express();
server.listen("3000")
//创建连接池
var pool = mysql.createPool({
    host: "127.0.0.1",
    port: "3306",
    user: "root",
    password: "",
    database: "vgt",
    connectionLimit: 20
})
server.use(cors({
    origin: ['http://127.0.0.1:8080', 'http:localhost:8080'],
    credentials: true
}))
server.use(session({
    secret: "123456",
    resave: false,
    saveUninitialized: true
}))
server.use(express.static('public'))
// 搜索
server.get("/search", (req, res) => {
    var title = req.query.title
    var sql = "SELECT * from vgt_search  where title like concat('%',?,'%')"
    pool.query(sql, [title], (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: -1, msg: err })
        } else {
            res.send({ code: 1, result })
        }
    })
})
// 登录
server.post("/login", (req, res) => {
    var uname = req.query.uname;
    var upwd = req.query.upwd;
    var sql = "SELECT id,uname,headimg,username FROM vgt_user where uname=? and upwd=?"
    pool.query(sql, [uname, upwd], (err, result) => {
        if (err) throw err;
        if (!result.length) {
            res.send({ code: -1, msg: "用户名或密码错误" })
        } else {
            req.session.uname=result[0].uname;
            res.send({ code: 1, result })
        }
    })
})