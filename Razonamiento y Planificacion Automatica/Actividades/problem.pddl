(define (problem Problema1) (:domain Laboratorio3)
(:objects 
    	ambulance1 - vehicle
		ambulance2 - vehicle
		patient0 - patient
    	patient1 - patient
        patient2 - patient
        hospital - location
    	location1 - location
        location2 - location
    	location3 - location
        location4 - location
		location5 - location
)

(:init
	(on ambulance1 hospital)
	(on ambulance2 hospital)
	(on patient0 location1)
	(on patient1 location3)
	(on patient2 location4)
	(ambulance-empty)
	
	(route hospital location1)
	(route location1 location2)
	(route location2 location3)
	(route location3 location4)
	(route location4 location5)
	(route location5 location3)
	(route location3 location1)
	(route location1 hospital)

)

(:goal 
    (and
    	(on patient0 hospital)
        (on patient1 hospital)
        (on patient2 hospital)
    )
)
)