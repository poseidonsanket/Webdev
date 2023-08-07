
import { Box } from '@mui/material';
import './App.css';
import CalorieCalculator from './components/CalorieCalculator';
import ExerciseCalculator from './components/ExerciseCalculator'

function App() {
  return (
    <Box display="flex" justifyContent="space-evenly">
        <CalorieCalculator/>
        <ExerciseCalculator/>
    </Box>
  );
}

export default App;
