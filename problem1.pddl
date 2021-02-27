(define (problem Problem1) (:domain City)
    (:objects 
        A1 - ambulance
        L1 - hospital
        L2 L3 L4 - location
        E1 E2 - patient
    )

    (:init
        ;todo: put the initial state's facts and numeric values here
        (link L1 L2)
        (link L2 L1)
        (link L2 L4)
        (link L4 L2)
        (link L4 L3)
        (link L3 L4)
        (position E1 L3)
        (position E2 L4)
        (position A1 L1)
        (empty_ambulance A1)
    )

    (:goal (and
        ;todo: put the goal condition here
        (position E1 L1)
        (position E2 L1)
        )
    )
)