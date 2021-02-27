(define (problem Problem1) (:domain City)
    (:objects 
        A1 A2 - ambulance
        L1 L9 - hospital
        L2 L3 L4 L5 L6 L7 L8 L10 - location
        E1 E2 E3 E4 E5 E6 - patient
    )

    (:init
        ;todo: put the initial state's facts and numeric values here
        (link L1 L2)
        (link L2 L1)
        (link L2 L4)
        (link L4 L2)
        (link L4 L3)
        (link L3 L4)
        (link L4 L5)
        (link L4 L7)
        (link L7 L4)
        (link L2 L6)
        (link L6 L2)
        (link L5 L6)
        (link L6 L5)
        (link L6 L8)
        (link L8 L7)
        (link L7 L10)
        (link L10 L7)
        (link L8 L9)
        (link L9 L8)
        (position E1 L3)
        (position E2 L4)
        (position E3 L7)
        (position E4 L5)
        (position E5 L10)
        (position E6 L10)
        (position A1 L1)
        (position A2 L9)
        (empty_ambulance A1)
        (empty_ambulance A2)
    )

    (:goal (and
        ;todo: put the goal condition here
        (position E1 L1)
        (position E2 L9)
        (position E3 L1)
        (position E4 L9)
        (position E5 L1)
        (position E6 L9)
        (position A1 L1)
        (position A2 L9)
        )
    )
)