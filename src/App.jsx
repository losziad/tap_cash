import "./css/App.css";
import Navbar from "./components/Navbar";
import { Route, Routes } from "react-router-dom";
import Home from "./components/Home"
import Services from "./components/Services"
import ChildWallet from "./components/ChildWallet"
import Features from "./components/Features"
import About from "./components/About"

function App() {
  return (
    <div>
      <Navbar/>
      <Routes>
        <Route path="/" element={ <Home/> } />
        <Route path="services" element={ <Services/> } />
        <Route path="child wallet" element={ <ChildWallet/> } />
        <Route path="features" element={ <Features/> } />
        <Route path="about" element={ <About/> } />
      </Routes>
    </div>
  );
}

export default App;
