const conn = require('../../../config/db');

const login = async (email, password) => {
    try
    {
        const [accounts] = await conn.execute(
            'SELECT email, matkhau FROM taikhoan WHERE email = ?', [email]
        );

        if(accounts.length === 0)
        {
            return {
                success: false,
                message: 'Thông tin đăng nhập không hợp lệ'
            };
        }

        const account = accounts[0];

        if(account.matkhau !== password)
        {
            return{
                success: false,
                message: 'Mật khẩu không đúng'
            };
        }

        return {
            success: true,
            message: 'Đăng nhập thành công',
            account: {
                id: account.id,
                gmail: account.gmail
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