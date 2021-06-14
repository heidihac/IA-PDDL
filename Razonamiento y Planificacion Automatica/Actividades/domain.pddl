(define (domain Laboratorio3)

(:requirements :strips :typing :negative-preconditions)

    (:types
        location locatable - object
        vehicle patient - locatable
    )

    (:predicates
        (on ?obj - locatable ?loc - location)
        (holding ?v - locatable ?p - locatable)
        (ambulance-empty)
        (route ?location1 - location ?location2 - location)
    )

    (:action pick-up
    :parameters (?v - vehicle ?p - locatable ?loc - location)
    :precondition
    (and 
        (on ?v ?loc) 
        (on ?p ?loc) 
        (ambulance-empty)
        )
    :effect
    (and 
        (not (on ?p ?loc))
        (holding ?v ?p)
        (not (ambulance-empty))
    )
    )

    (:action drop
    :parameters (?v - vehicle ?p - locatable ?loc - location)
    :precondition
    (and 
        (on ?v ?loc)
        (holding ?v ?p)
        )
    :effect
    (and 
        (on ?p ?loc)
        (ambulance-empty)
        (not (holding ?v ?p))
    )
    )

    (:action driving
    :parameters (?v - vehicle ?from - location ?to - location)
    :precondition
    (and 
        (on ?v ?from) 
        (route ?from ?to)
    )
    :effect
    (and 
        (not (on ?v ?from))
        (on ?v ?to)
    )
    )
)