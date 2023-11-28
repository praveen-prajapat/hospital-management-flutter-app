// // ReceptionistPage.js
// import React, { useState } from 'react';
// import styles from './receptionist.module.css'

// // Constant data
// const doctorsData = [
//   { id: 1, name: 'Dr. Smith', department: 'Cardiology' },
//   { id: 2, name: 'Dr. Johnson', department: 'Dermatology' },
//   { id: 3, name: 'Dr. Williams', department: 'Orthopedics' },
//   // Add more doctors as needed
// ];

// const appointmentsData = [
//   { doctorId: 1, patientName: 'John Doe', rollNo: '12345', appointmentTime: '10:00 AM', bookingTime: '9:30 AM' },
//   { doctorId: 1, patientName: 'Jane Smith', rollNo: '54321', appointmentTime: '11:30 AM', bookingTime: '10:45 AM' },
//   { doctorId: 2, patientName: 'Bob Johnson', rollNo: '67890', appointmentTime: '2:00 PM', bookingTime: '1:15 PM' },
//   // Add more appointments as needed
// ];

// function Receptionist() {
//   const [searchQuery, setSearchQuery] = useState('');
//   const [filteredDoctors, setFilteredDoctors] = useState(doctorsData);

//   const handleSearch = () => {
//     const query = searchQuery.toLowerCase().trim();

//     if (query === '') {
//       setFilteredDoctors(doctorsData);
//     } else {
//       const filtered = doctorsData.filter(
//         (doctor) =>
//           doctor.name.toLowerCase().includes(query) ||
//           doctor.department.toLowerCase().includes(query)
//       );
//       setFilteredDoctors(filtered);
//     }
//   };

//   return (
//     <div className={styles.receptionistpage}>
//       <h1>Receptionist Page</h1>

//       <div className={styles.searchdoctors}>
//         <label>Search Doctors:</label>
//         <input
//           type="text"
//           value={searchQuery}
//           onChange={(e) => setSearchQuery(e.target.value)}
//         />
//         <button onClick={handleSearch}>Search</button>
//       </div>

//       {filteredDoctors.map((doctor) => (
//         <div key={doctor.id} className={styles.doctorappointment}>
//           <h2>{doctor.name} - {doctor.department}</h2>
//           <table>
//             <thead>
//               <tr>
//                 <th>Patient Name</th>
//                 <th>Roll No</th>
//                 <th>Appointment Time</th>
//                 <th>Booking Time</th>
//               </tr>
//             </thead>
//             <tbody>
//               {appointmentsData
//                 .filter((appointment) => appointment.doctorId === doctor.id)
//                 .map((appointment, index) => (
//                   <tr key={index}>
//                     <td>{appointment.patientName}</td>
//                     <td>{appointment.rollNo}</td>
//                     <td>{appointment.appointmentTime}</td>
//                     <td>{appointment.bookingTime}</td>
//                   </tr>
//                 ))}
//             </tbody>
//           </table>
//         </div>
//       ))}
//     </div>
//   );
// }

// export default Receptionist;

import React, { useState } from 'react';
import styles from './receptionist.module.css'

const Receptionist = () => {
  // Sample data for doctors and a patient
  const doctors = [
    { id: 1, name: 'Dr. Smith' },
    { id: 2, name: 'Dr. Johnson' },
    // Add more doctor details as needed
  ];

  const patient = {
    name: 'John Doe',
    image: 'patient-image.jpg',
    age: 25,
    weight: 70,
    visits: [
      { date: '2023-01-01', doctor: 'Dr. Smith' },
      // Add more visit details as needed
    ],
    pendingLabReports: ['Report1', 'Report2'],
    pendingBills: ['Bill1', 'Bill2'],
  };

  // State for search functionality
  const [searchDoctor, setSearchDoctor] = useState('');

  // Sample data for appointments
  const appointments = [
    { id: 1, name: 'Patient 1', rollNo: '001', mobileNumber: '1234567890', time: '10:00 AM', doctor: 'Dr. Smith' },
    { id: 2, name: 'Patient 2', rollNo: '002', mobileNumber: '9876543210', time: '11:00 AM', doctor: 'Dr. Johnson' },
    // Add more appointment details as needed
  ];

  // Filter appointments based on the selected doctor
  const filteredAppointments = appointments.filter((appointment) =>
    appointment.doctor.toLowerCase().includes(searchDoctor.toLowerCase())
  );

  return (
    <div className={styles.receptionistpage}>
      {/* Section 1: Appointment Details */}
      <div className={styles.appointmentsection}>
        <h2>Appointment Details</h2>
        <input
          type="text"
          placeholder="Search Doctor"
          value={searchDoctor}
          onChange={(e) => setSearchDoctor(e.target.value)}
        />
        <table>
          <thead>
            <tr>
              <th>Name</th>
              <th>Roll No</th>
              <th>Mobile Number</th>
              <th>Time of Appointment</th>
            </tr>
          </thead>
          <tbody>
            {filteredAppointments.map((appointment) => (
              <tr key={appointment.id}>
                <td>{appointment.name}</td>
                <td>{appointment.rollNo}</td>
                <td>{appointment.mobileNumber}</td>
                <td>{appointment.time}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Section 2: Patient Information */}
      <div className={styles.patientsection}>
        <h2>Patient Information</h2>
        <div>
          <img src={patient.image} alt={patient.name} />
          <div>
            <p>Name: {patient.name}</p>
            <p>Age: {patient.age}</p>
            <p>Weight: {patient.weight} kg</p>
          </div>
        </div>
        <h3>Previous Visits</h3>
        <ul>
          {patient.visits.map((visit, index) => (
            <li key={index}>{`${visit.date} - ${visit.doctor}`}</li>
          ))}
        </ul>
        <h3>Pending Lab Reports</h3>
        <ul>
          {patient.pendingLabReports.map((report, index) => (
            <li key={index}>{report}</li>
          ))}
        </ul>
        <h3>Pending Medical Bills</h3>
        <ul>
          {patient.pendingBills.map((bill, index) => (
            <li key={index}>{bill}</li>
          ))}
        </ul>
      </div>

      {/* Section 3: Time and Schedule for Doctors */}
      <div className={styles.schedulesection}>
        <h2>Doctor Schedule</h2>
        <table>
          <thead>
            <tr>
              <th>Doctor</th>
              <th>Monday</th>
              <th>Tuesday</th>
              <th>Wednesday</th>
              <th>Thursday</th>
              <th>Friday</th>
              <th>Saturday</th>
              <th>Sunday</th>
            </tr>
          </thead>
          <tbody>
            {doctors.map((doctor) => (
              <tr key={doctor.id}>
                <td>{doctor.name}</td>
                {/* Add schedule data for each day */}
                <td>{/* Monday schedule */}adfg</td>
                <td>{/* Tuesday schedule */}sdf</td>
                <td>{/* Wednesday schedule */}sdfg</td>
                <td>{/* Thursday schedule */}sdf</td>
                <td>{/* Friday schedule */}sdf</td>
                <td>{/* Saturday schedule */}sdf</td>
                <td>{/* Sunday schedule */}sdf</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default Receptionist;
