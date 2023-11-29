// ReceptionistPage.js
import React, { useState } from 'react';
import styles from './receptionist.module.css'
import { Link } from 'react-router-dom';

// Constant data
const doctorsData = [
  { id: 1, name: 'Dr. Smith', department: 'Cardiology' },
  { id: 2, name: 'Dr. Johnson', department: 'Dermatology' },
  { id: 3, name: 'Dr. Williams', department: 'Orthopedics' },
  // Add more doctors as needed
];

const appointmentsData = [
  { doctorId: 1, patientName: 'John Doe', rollNo: '12345', appointmentTime: '10:00 AM', bookingTime: '9:30 AM' },
  { doctorId: 1, patientName: 'Jane Smith', rollNo: '54321', appointmentTime: '11:30 AM', bookingTime: '10:45 AM' },
  { doctorId: 2, patientName: 'Bob Johnson', rollNo: '67890', appointmentTime: '2:00 PM', bookingTime: '1:15 PM' },
  // Add more appointments as needed
];

function Receptionist() {
  const [searchQuery, setSearchQuery] = useState('');
  const [filteredDoctors, setFilteredDoctors] = useState(doctorsData);

  
  const handleSearch = () => {
    const query = searchQuery.toLowerCase().trim();

    if (query === '') {
      setFilteredDoctors(doctorsData);
    } else {
      const filtered = doctorsData.filter(
        (doctor) =>
          doctor.name.toLowerCase().includes(query) ||
          doctor.department.toLowerCase().includes(query)
      );
      setFilteredDoctors(filtered);
    }
  };

  return (
    <div>
      <div className={styles.receptionistpage}>
      <h1>Receptionist Page</h1>

      <div className={styles.searchdoctors}>
        <label>Search Doctors:</label>
        <input
          type="text"
          value={searchQuery}
          onChange={(e) => setSearchQuery(e.target.value)}
        />
        <button onClick={handleSearch}>Search</button>
      </div>

      {filteredDoctors.map((doctor) => (
        <div key={doctor.id} className={styles.doctorappointment}>
          <h2>{doctor.name} - {doctor.department}</h2>
          <table>
            <thead>
              <tr>
                <th>Patient Name</th>
                <th>Roll No</th>
                <th>Appointment Time</th>
                <th>Booking Time</th>
              </tr>
            </thead>
            <tbody>
              {appointmentsData
                .filter((appointment) => appointment.doctorId === doctor.id)
                .map((appointment, index) => (
                  <tr key={index}>
                    <td>{appointment.patientName}</td>
                    <td>{appointment.rollNo}</td>
                    <td>{appointment.appointmentTime}</td>
                    <td>{appointment.bookingTime}</td>
                  </tr>
                ))}
            </tbody>

          </table>
         
        </div>
      ))}
    </div>
     <div className={styles.searchstudents}>
     <label>Search Students:</label>
     <input
       type="text"
     
       
     />
     <button > <Link style={{ textDecoration: 'none', color: 'white' }} to="/receptionist/studentinfo">Search</Link></button>
   </div>
    </div>
  );
}

export default Receptionist;

