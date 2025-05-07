const authService = require('../service/auth.service');

const loginUser = async (req, res) => {
    const { email, matkhau } = req.body;
    const results = await authService.login(email, matkhau);

    if(results.success)
    {
        res.status(200).json({ message: 'Đăng nhập thành công', account: results.account });
    }
    else
    {
        res.status(401).json({ message: results.message });
    }
};

module.exports = { loginUser };