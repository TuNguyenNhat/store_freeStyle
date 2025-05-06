const authService = require('../service/auth.service');

const loginUser = async (req, res) => {
    const { gmail, matkhau } = req.body;
    const results = await authService.login(gmail, matkhau);

    if(results.success)
    {
        res.status(200).json({ message: 'Đăng nhập thành công', user: results.user });
    }
    else
    {
        res.status(401).json({ message: results.message });
    }
};

module.exports = { loginUser };