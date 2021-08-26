const command = "zsh pecan/scripts/wifi";
const refreshFrequency = 10000; //ms

const render = ({ output }) => <div class='screen'><div class='pecanwifi'>{`${output}`}</div></div>;

export { command, refreshFrequency, render };
