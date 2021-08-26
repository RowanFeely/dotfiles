const command = "zsh scripts/index1";
const refreshFrequency = 10000; //ms

const render = ({ output }) => <div class='screen'><div class='pecanindex1'>{`${output}`}</div></div>;

export { command, refreshFrequency, render };
