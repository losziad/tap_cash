import "../css/Home.css";
import React from "react";
import visa from "../assets/visa.jpg";
import orange from "../assets/orange.png";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faWallet } from "@fortawesome/free-solid-svg-icons";
import { faMoneyCheck } from "@fortawesome/free-solid-svg-icons";
import { faCreditCard } from "@fortawesome/free-solid-svg-icons";
import bills from "../assets/bills.jpg"
import transfer from "../assets/transfer.png";
import scan from "../assets/scan.jpg"
import shoping from "../assets/shoping.jpg"
import fast from "../assets/fast.png"
import pushmoney from "../assets/pushmoney.png"
import Footer from "./Footer";

const Home = () => {
  return (
    <main>
      <section className="home w-full h-full flex justify-around items-center sm:flex-col md:flex-col lg:flex-row">
        <img src={visa} alt="" />
        <div className="">
          <h1 className="text-4xl font-extrabold">
            Money mangament <br /> has never been easier
          </h1>
          <p className="text-gray-500 text-lg my-6">
            Tap Cash, through which you can enjoy the benefits of a smart wallet
            and smart card, and you can control your children's expenses with
            ease
          </p>
          <button className="bg-purple-950 rounded-lg text-white text-2xl px-5 py-3 my-6">
            Get Started
          </button>
          <p className="text-gray-500">Registered and supervised by:</p>
          <img src={orange} />
        </div>
      </section>
      <section className="bg-gray-100 p-8 flex justify-around">
        <div>
          <p className="text-purple-950 font-bold text-lg">Why Should Us?</p>
          <h1 className="text-4xl font-extrabold">
            We are the team of enthusiasts
          </h1>
        </div>
        <div className="w-1/2">
          <p className="text-gray-500 text-lg my-6">
            Our thecnology suite is engineered to support diverse busines needs
            on demand. Our communal culture, performance excellence and private
            cloud technology paves the way for unprecedented customer support.
          </p>
          <button className="bg-purple-950 rounded-lg text-white text-2xl px-5 py-3 my-6">
            Explore
          </button>
        </div>
      </section>
      <section className="icons p-8 bg-gray-100 flex justify-around">
        <div className="text-center p-3 bg-white rounded shadow-lg">
          <FontAwesomeIcon
            icon={faWallet}
            className="text-5xl pb-4 text-orange-600"
          />
          <h1 className="text-2xl font-bold pb-2">
            Controll your children's expenses
          </h1>
          <p className="text-gray-500">
            We can help you control your children's expenses in detail and
            completely, and control where they are spent
          </p>
        </div>
        <div className="text-center p-3 bg-white rounded shadow-lg">
          <FontAwesomeIcon
            icon={faMoneyCheck}
            className="text-5xl pb-4 text-orange-600"
          />
          <h1 className="text-2xl font-bold pb-2">Saving money easily</h1>
          <p className="text-gray-500">
            We can help you save more money and keep you on your toes. by
            investing your funds, the money you have today can be more useful.
          </p>
        </div>
        <div className="text-center p-3 bg-white rounded shadow-lg">
          <FontAwesomeIcon
            icon={faCreditCard}
            className="text-5xl pb-4 text-orange-600"
          />
          <h1 className="text-2xl font-bold pb-2">Details of your expenses</h1>
          <p className="text-gray-500">
            We provide you with all the details you need to know your expenses
            and control your budget
          </p>
        </div>
      </section>
      <section className="features py-6">
        <p className="text-center">FEATURES</p>
        <h1 className="text-center text-orange-600 p8-6 font-extrabold text-3xl">
          Enjoy convenience and security when you send <br /> money, pay bills,
          shop online, and more with <br /> Tap Cash Smart Wallet.
        </h1>
        <p className="text-center text-lg my-3">
          In cooperation with Al Ahli Bank, CIB Bank, Fawry, and Meeza Digital!
        </p>
        <div className="w-3/4 flex items-center my-6 mx-auto">
          <img src={bills} className="rounded w-1/2" />
          <article className="w-1/2 p-4">
            <h2 className="text-lg mb-6 font-bold">Pay bills</h2>
            <p>
              Never miss a payment again! You can top-up your mobile and pay
              your utility, gas, water, internet and mobile bills from the
              comfort of your home.
            </p>
          </article>
        </div>
        <div className="w-3/4 flex flex-row-reverse items-center my-6 mx-auto">
          <img src={transfer} className="rounded w-1/2" />
          <article className="w-1/2 p-4">
            <h2 className="text-lg mb-6 font-bold">Transfer Money</h2>
            <p>
              Sending Money to your family members has never been easier! Send
              and receive money to any mobile wallet in Egypt using the
              recipient's mobile numbe.
            </p>
          </article>
        </div>
        <div className="w-3/4 flex items-center my-6 mx-auto">
          <img src={shoping} className="rounded w-1/2" />
          <article className="w-1/2 p-4">
            <h2 className="text-lg mb-6 font-bold">Shop online</h2>
            <p>
              Shop online while keeping information safe. Shop from any website by issuing either a single or multi-use online card. Single-use online card expires after 24 hours or upon your first purchase, while the multi-use online card expires after one month or upon your first three transactions.
            </p>
          </article>
        </div>
        <div className="w-3/4 flex flex-row-reverse items-center my-6 mx-auto">
          <img src={scan} className="rounded w-1/2" />
          <article className="w-1/2 p-4">
            <h2 className="text-lg mb-6 font-bold">Scan and Shop</h2>
            <p>
              Scan and shop with your smart wallet from any merchant with the "Meeza Digital" logo. simply scan merchant's QR code to make a puchase!.
            </p>
          </article>
        </div>
        <div className="w-3/4 flex items-center my-6 mx-auto">
          <img src={fast} className="rounded w-1/2" />
          <article className="w-1/2 p-4">
            <h2 className="text-lg mb-6 font-bold">Fast Cash</h2>
            <p>
              Make a deposit into your wallet with the"Depposit" feature through any ATM in Egypt that offers cardless services, thruogh any Authorized Banking Agent outlet.CIB customers can link any two debit, credit or prepaid cards to their wallet and instantly load their wallet.
            </p>
          </article>
        </div>
      </section>
      <section>
        <p className="text-purple-950 text-lg font-bold ml-12 mb-6">We're Global</p>
        <h1 className="text-5xl font-black ml-12">
          Scale and adapt at the <br />
          speed of your bussines
        </h1>
        <p className="text-gray-500 ml-12 my-3">
          Full control of your expenses and the expenses of your children, and enjoy the <br /> benfits of a smart wallet and an electronic card in one application that helps <br /> you save a lot of time and money
        </p>
        <div className="ml-12 flex justify-around items-center">
          <article>
            <h1 className="text-4xl font-extrabold mt-12">370,000 +</h1>
            <span className="text-orange-600">client</span>
            <h1 className="text-4xl font-extrabold mt-12">500 +</h1>
            <span className="text-orange-600">Employees</span>
            <h1 className="text-4xl font-extrabold mt-12">80 +</h1>
            <span className="text-orange-600">Contact Centers</span>
          </article>
          <img src={pushmoney} />
        </div>
      </section>
      <Footer />
    </main>
  );
};

export default Home;
