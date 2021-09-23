import React, { useState, useEffect } from 'react';
import axios from 'axios';
import Section from "./Section";

export default function Profile() {
  const [data, setData] = useState([]);
  useEffect(async () => {
    const fetchData = async () => {
      const result = await axios('https://localhost:44391/api/User/GetUser/cc555511-b175-41fa-b066-1d046237bdbc')

      setData(result.data);
      console.log(result.data);
    };

    fetchData();
  }, []);

  return (
    <>

      <main className="profile-page">
        <Section />
            <section className="relative py-16 bg-blueGray-200">
              <div className=" mx-auto px-4">
              <div className="relative flex flex-col min-w-0 break-words bg-white w-full mb-6 shadow-xl rounded-lg -mt-64">
                <div className="px-6 py-6">
                <div className="flex flex-wrap justify-center">
                  {/* <!-- About Section starts here --> */}
                  <div  className="bg-white p-3 shadow-sm rounded-sm">
                      <div  className="flex items-center space-x-2 font-semibold text-gray-900 leading-8">
                        <span clas="text-green-500">
                            <svg  className="h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                            </svg>
                        </span>
                        <span  className="tracking-wide">Profile</span>
                    </div>
                    <div className="text-gray-700">
                        <div  className="grid md:grid-cols-2 text-sm">
                        <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">ID</div>
                                <div  className="px-4 py-2">{data.id}</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Subscription ID</div>
                                <div  className="px-4 py-2">{data.roleId}</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">First Name</div>
                                <div  className="px-4 py-2">{data.userName}</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Last Name</div>
                                <div  className="px-4 py-2">Doe</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Gender</div>
                                <div  className="px-4 py-2">Female</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Contact No.</div>
                                <div  className="px-4 py-2">{data.mobileNumber}</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Current Address</div>
                                <div  className="px-4 py-2">Beech Creek, PA, Pennsylvania</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Permanant Address</div>
                                <div  className="px-4 py-2">Arlington Heights, IL, Illinois</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Email.</div>
                                <div  className="px-4 py-2">
                                    <a  className="text-blue-800" href="mailto:jane@example.com">{data.email}</a>
                                </div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Birthday</div>
                                <div  className="px-4 py-2">Feb 06, 1998</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Member Since</div>
                                <div  className="px-4 py-2">{data.createdAt}</div>
                            </div>
                            <div  className="grid grid-cols-2">
                                <div  className="px-4 py-2 font-semibold">Designation</div>
                                <div  className="px-4 py-2">{data.userName}</div>
                            </div>
                        </div>
                    </div>
                  </div>
                  {/* About Section ends here */}
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>


    </>
  );
}
