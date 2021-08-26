const command = "zsh pecan/scripts/weather";
const refreshFrequency = 10000; //ms

const render = ({ output }) => <div class='screen'><div class='pecanweather'>{`${output}`}</div></div>;

export { command, refreshFrequency, render };
