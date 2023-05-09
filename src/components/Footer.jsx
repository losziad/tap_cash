import React from 'react'
import '../css/footer.css'
import android from '../assets/googleplay.png'
import iphone from '../assets/appstore.png'

const Footer = () => {
  return (
    <>
      <section className="flex justify-around py-12 bg-slate-950">
        <div>
          <span className="text-orange-600 text-lg pb-8">Subscribe</span>
          <h1 className="text-white text-4xl font-extrabold">
            Stay informed never <br />
            missed an update!
          </h1>
        </div>
        <div>
          <p className="text-white mb-12">
            Once each month we'll send you recent episode of our financial
            information <br />
            covering the optimizzation of digital technology and irresistible
            people <br />
            delivering a great customer expriene that impacts the bootom line.
          </p>
          <div className='border-b-2 border-white pb-2 flex justify-between'>
            <input
              type="email"
              placeholder="Email Address"
              className="bg-slate-950 text-white"
            />
            <button className='text-white bg-purple-950 px-6 py-3 rounded text-xl'>
              Subscripe
            </button>
          </div>
        </div>
      </section>
      <footer className="flex justify-around py-14 flex-wrap">
        <div>
          <h1 className="text-5xl text-blue-500">
            Tap <span className="text-white">Cash</span>
          </h1>
          <p className="text-orange-600 text-xl">Smart Wallet</p>
        </div>
        <table className="text-white text-xl">
          <tr>
            <td>Home</td>
            <td>FAQ</td>
          </tr>
          <tr>
            <td>Childre's Wallet</td>
            <td>Community</td>
          </tr>
          <tr>
            <td>Services</td>
            <td>Join to team</td>
          </tr>
          <tr>
            <td>About</td>
            <td>Legal Stuff</td>
          </tr>
          <tr>
            <td>Features</td>
            <td>Terms of services</td>
          </tr>
          <tr>
            <td>
              <img src={android} />
            </td>
            <td>
              <img src={iphone} />
            </td>
          </tr>
        </table>
      </footer>
      <h1 className="w-full text-center py-6">
        Copright@TapCash 2023. All Rights Reserved
      </h1>
    </>
  );
}

export default Footer