import Navi from "./Navi/Navi";
import Footer from "./Footer/Footer";

const DefaultLayout = (props) => {
    const {children} = props;

    return (
        <>
            <Navi/>
            {children};
            <Footer/>
        </>
    )
}

export default DefaultLayout;