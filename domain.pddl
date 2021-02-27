;Header and description
(define (domain City)

    ;remove requirements that are not needed
    (:requirements :strips :typing :negative-preconditions)

    (:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
        location moving_object - object
        hospital - location
        ambulance patient - moving_object
    )

    (:predicates ;todo: define predicates here
        (link ?l_s - location ?l_t - location)
        (position ?m - moving_object ?l - location)
        (empty_ambulance ?a - ambulance)
        (ambulance_with_patient ?a - ambulance ?p - patient)
    )

    ;define actions here
    (:action Driving
        :parameters (?a - ambulance ?l_s - location ?l_t - location)
        :precondition (and 
            (position ?a ?l_s)
            (link ?l_s ?l_t)
            (empty_ambulance ?a)
        )
        :effect (and 
            (position ?a ?l_t)
            (not (position ?a ?l_s))
        )
    )
    (:action Driving_with_patient
        :parameters (?a - ambulance ?p - patient ?l_s - location ?l_t - location)
        :precondition (and 
            (position ?a ?l_s)
            (link ?l_s ?l_t)
            (ambulance_with_patient ?a ?p)
        )
        :effect (and 
            (position ?a ?l_t)
            (not (position ?a ?l_s))
        )
    )
    (:action Load_patient
        :parameters (?a - ambulance ?p - patient ?l - location)
        :precondition (and 
            (position ?a ?l)
            (position ?p ?l)
            (empty_ambulance ?a)
        )
        :effect (and 
            (not (position ?p ?l))
            (not (empty_ambulance ?a))
            (ambulance_with_patient ?a ?p)
        )
    )
    (:action Download_patient
        :parameters (?a - ambulance ?p - patient ?l - location)
        :precondition (and 
            (position ?a ?l)
            (not (empty_ambulance ?a))
            (ambulance_with_patient ?a ?p)
        )
        :effect (and 
            (position ?p ?l)
            (empty_ambulance ?a)
            (not (ambulance_with_patient ?a ?p))
        )
    )
)