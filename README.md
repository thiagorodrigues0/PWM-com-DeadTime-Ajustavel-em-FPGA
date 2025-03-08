Um Dead Time (tempo morto) é basicamente uma defasagem entre sinais de controle/eventos, podendo adiantar e atrasar ativações do respectivo sistema para evitar alguma falha. São comumentes utilizados 
em eletrônica de potência em topologias de conversores modulados por PWMs complementares, no qual pode ocorrer curto-circuito nos braços de chaves sem a utilização de um tempo morto no 
PWM complementar em relaçao ao PWN primário.

Este projeto implementa um Dead Time ajustável para PWM em FPGA, no qual pode-se controlar: 
* Razão Cíclica do PWM; 
* Controle do Dead Time de subida e descida simultaneamente; 
* e Controle do Dead Time de subida e descida separadamente.

O procedimento para obter o Dead Time é feito conforme figura abaixo, adiantando e atrasando o pwm primário e então unindo-os e invertendo de forma coordenada.
![wavedrom](https://github.com/user-attachments/assets/ef3aaddb-6772-414e-816e-2a336de48cd8)

O esquemático do projeto está destacado abaixo:
![Schematic Projeto](https://github.com/user-attachments/assets/d628976b-fa3f-4920-b3d7-b54338e5fe25)
