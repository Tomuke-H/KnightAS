import './App.css';
import { Routes, Route} from "react-router-dom";
import Home from './Home.js';
import Display from './Display.js'
import Admin from './Admin.js'

function App() {
  return (
    <>
      <h1>Hurray!</h1>
      <Routes>
        <Route path="/home" element={<Home/>}/>
        <Route path="/admin" element={<Admin/>}/>
        <Route path="/display" element={<Display/>}/>
      </Routes>
    </>
  );
}

export default App;
