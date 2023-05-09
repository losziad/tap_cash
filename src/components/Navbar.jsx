import React from "react";
import "../css/Navbar.css";
import { NavLink } from "react-router-dom";

const Navbar = () => {
  return (
    <header className="overflow-hidden flex justify-between items-center sm:px-2 md:px-4 lg:px-8">
      <h1>
        <p className="text-3xl font-medium">
          <span className="text-purple-950">Tap </span>
          <span className="text-sky-500">Cash</span>
        </p>
        <span className="sm:block md:hidden lg:hidden">=</span>
      </h1>
      <nav className="w-1/2 flex justify-around">
        <NavLink to={"/"} className="">
          Home
        </NavLink>
        <NavLink to={"services"} className="">
          Services
        </NavLink>
        <NavLink to={"child wallet"} className="">
          Child Wallet
        </NavLink>
        <NavLink to={"features"} className="">
          Features
        </NavLink>
        <NavLink to={"about"} className="">
          About
        </NavLink>
      </nav>
      <NavLink to={""} className="download bg-orange-600 text-white rounded-lg">
        Download
      </NavLink>
      <div className="flex">
        <NavLink
          to={""}
          className="signup mr-3 rounded-lg text-violet-950 border-2 border-violet-950"
        >
          Sign Up
        </NavLink>
        <NavLink to={""} className="login rounded-lg text-white bg-violet-950">
          Login
        </NavLink>
      </div>
    </header>
  );
};

export default Navbar;
