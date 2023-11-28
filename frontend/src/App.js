import './App.css';
import Doctor from './pages/Doctor';
import Home from './pages/Home';
import { BrowserRouter as Router, Route, Routes} from 'react-router-dom';
import Receptionist from './pages/Receptionist';
import Labstaff from './pages/Labstaff';
import Pharmacy from './pages/Pharmacy';
import Patient from './pages/Patient';

function App() {
  return (
    <div className="App">
      <Router>
        <Routes>
          <Route path='/' element={<Home/>} />
          <Route path='/doctor' element={<Doctor/>} />
          <Route path='/student' element={<Patient/>} />
          <Route path='/receptionist' element={<Receptionist/>} />
          <Route path='/labstaff' element={<Labstaff/>} />
          <Route path='/pharmacy' element={<Pharmacy/>} />
          
        </Routes>
      </Router>
    </div>
  );
}

export default App;
