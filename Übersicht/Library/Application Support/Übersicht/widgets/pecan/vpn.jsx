const command = 'zsh pecan/scripts/VPN';
const refreshFrequency = 10000; //ms

const render = ({ output }) => (<div class="screen"><div class="pecanvpn">{`${output}`}</div></div>);

export { command, refreshFrequency, render };
