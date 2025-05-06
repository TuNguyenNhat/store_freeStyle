const conn = require('../../../config/db');

const login = async (email, password) => {
    try
    {
        const [users] = await conn.execute(
            'SELECT gmail, matkhau FROM users WHERE gmail = ?', [email]
        );

        if(users.length === 0)
        {
            return {
                success: false,
                message: 'Thông tin đăng nhập không hợp lệ'
            };
        }

        const user = users[0];

        if(user.matkhau !== password)
        {
            return{
                success: false,
                message: 'Mật khẩu không đúng'
            };
        }

        return {
            success: true,
            message: 'Đăng nhập thành công',
            user: {
                id: user.id,
                gmail: user.gmail
            }
        };
    }
    catch(err)
    {
        console.log('Lỗi xử lý auth.service');
        return{
            success: false,
            message: 'Lỗi Server'
        }
    }
};

module.exports = { login };