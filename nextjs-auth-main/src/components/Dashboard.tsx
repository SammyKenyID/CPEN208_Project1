// components/Dashboard.tsx

import React from 'react';

const Dashboard = () => {
  return (
    <div className="bg-gray-100 min-h-screen">
      <div className="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:px-8 mt-16">
        <div className="grid grid-cols-1 gap-6 md:grid-cols-2 xl:grid-cols-3">
          {/* Replace with your dashboard content */}
          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">My Courses</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Software Engineering</p>
                <p className="text-sm text-gray-500">CPEN208</p>
              </li>
              <li className="py-2">
                <p className="text-base text-gray-600">Data Structures & Algorithms</p>
                <p className="text-sm text-gray-500">CPEN204</p>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">Student Enquiry</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Academic Record</p>
              </li>
              <li className="py-2">
                <p className="text-base text-gray-600">Enrolment Detail</p>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">Course Registration</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Submit Registration</p>
              </li>
              <li className="py-2">
                <p className="text-base text-gray-600">Proof of Registration</p>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">Tools</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Academic Calendar</p>
                <p className="text-sm text-gray-500">View upcoming events</p>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">Help & Support</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Student Handbook</p>
                <p className="text-sm text-gray-500">FAQs and guidelines</p>
              </li>
              <li className="py-2">
                <p className="text-base text-gray-600">Contact Information</p>
                <p className="text-sm text-gray-500">Student Services</p>
              </li>
            </ul>
          </div>

          <div className="bg-white rounded-lg shadow-md p-6">
            <h2 className="text-lg font-semibold text-gray-800 mb-4">Announcements</h2>
            <ul className="divide-y divide-gray-300">
              <li className="py-2">
                <p className="text-base text-gray-600">Upcoming Exam Schedule</p>
                <p className="text-sm text-gray-500">Prepare accordingly</p>
              </li>
              <li className="py-2">
                <p className="text-base text-gray-600">New Assignment</p>
                <p className="text-sm text-gray-500">CPEN208: Software ENgineering</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Dashboard;
