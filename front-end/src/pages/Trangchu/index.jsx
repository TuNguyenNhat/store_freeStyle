import Album from "./components/Album"
import HieuthemveFreestyle from "./components/HieuthemveFreestyle"

const Trangchu = () => {
    return (
        <>
            <p class="mt-2 flex h-10 items-center justify-center px-4 text-sm font-medium bg-[#FAF3E0] sm:px-6 lg:px-8">
                Đăng ký ngay để nhận các thông tin mới nhất !
            </p>
            <Album/>
            <p className="text-center text-4xl tracking-tight text-gray-900 border-t py-6">
                Danh Sách Sản Phẩm Nổi Bật Lấy dữ liệu từ API rồi đổ ra Front-End nhé viết components cho dễ
            </p>
            <HieuthemveFreestyle/>
        </>
    )
}

export default Trangchu