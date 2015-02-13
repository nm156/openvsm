device_pins = 
{
    {is_digital=true, name = "A", on_time=100000, off_time=100000},   
    {is_digital=true, name = "B", on_time=100000, off_time=100000},   
    {is_digital=true, name = "Y", on_time=100000, off_time=100000},   
}

function device_init()

end

function timer_callback(time, eventid)

end

function device_simulate()
	if (get_pin_bool(A) == true) and (get_pin_bool(B) == true)  then
		set_pin_bool(Y, true)
	else
		set_pin_bool(Y, false)	
	end	
end


