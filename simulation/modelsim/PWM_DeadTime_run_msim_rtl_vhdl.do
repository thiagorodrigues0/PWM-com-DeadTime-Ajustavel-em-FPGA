transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/div_freq.vhd}
vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/portadora.vhd}
vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/pllfunction.vhd}
vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/moduladora.vhd}
vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/DeadTime.vhd}
vcom -93 -work work {C:/Users/thiag/OneDrive/햞ea de Trabalho/IC Work/Projeto/Trabalho Completo/PWM_DeadTime/comparador.vhd}

