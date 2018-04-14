
 -- INSERT DATA
  
        
        
        
        
        
            -- INSERT: Attendance
            --  STATIC: 
            --  Rows: 29
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec1T1Ye5nLCCwNBx')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec1T1Ye5nLCCwNBx', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Katrina Peterson', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Katrina Peterson', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'rec1T1Ye5nLCCwNBx';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec45fEyEZ8nNooHr')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec45fEyEZ8nNooHr', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Lorraine Ljuba', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Lorraine Ljuba', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'rec45fEyEZ8nNooHr';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec5vPpvyvapGbgGg')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5vPpvyvapGbgGg', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Clara Rotelli', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Clara Rotelli', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec5vPpvyvapGbgGg';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec8tCWDjJvvpAGyA')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec8tCWDjJvvpAGyA', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Reuben Ettore', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Reuben Ettore', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec8tCWDjJvvpAGyA';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec9IWqRYEPhBKDW9')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec9IWqRYEPhBKDW9', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Gabriella Lily', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Gabriella Lily', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec9IWqRYEPhBKDW9';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recGxGoHGZha3x5xq')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recGxGoHGZha3x5xq', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Reuben Ettore', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Reuben Ettore', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recGxGoHGZha3x5xq';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recHU8SXYlwUBjkV2')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recHU8SXYlwUBjkV2', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Marcellus Wong', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Marcellus Wong', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recHU8SXYlwUBjkV2';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recIu7rCfvTtAk2UM')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recIu7rCfvTtAk2UM', 
                        
                                'Matthaeus was really excited about this small event and wants to be invited to any in the future', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Mattheus Anderson', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Matthaeus was really excited about this small event and wants to be invited to any in the future', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Mattheus Anderson', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recIu7rCfvTtAk2UM';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recJKpD3DX2Rlbs24')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recJKpD3DX2Rlbs24', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Edith Lindon', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Edith Lindon', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recJKpD3DX2Rlbs24';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recN0zZXdNkUz0AHW')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recN0zZXdNkUz0AHW', 
                        
                                'Wanted to submit photos and information about this event to an online newsletter that she''s a part of', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Lorraine Ljuba', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Wanted to submit photos and information about this event to an online newsletter that she''s a part of', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Lorraine Ljuba', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recN0zZXdNkUz0AHW';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recOfGA5JvdnhsQqm')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recOfGA5JvdnhsQqm', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Bernard Casper', 
                        
                                '2016-10-30T19:55:44Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Bernard Casper', 
                                [createdTime] = '2016-10-30T19:55:44Z'
                        WHERE AttendanceId = 'recOfGA5JvdnhsQqm';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recQr1pLkEE1UL1t0')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recQr1pLkEE1UL1t0', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Belinda Chen', 
                        
                                '2016-10-30T19:55:32Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Belinda Chen', 
                                [createdTime] = '2016-10-30T19:55:32Z'
                        WHERE AttendanceId = 'recQr1pLkEE1UL1t0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recS8jKZnjLlBYJ3I')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recS8jKZnjLlBYJ3I', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Stephan Oswald', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Stephan Oswald', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recS8jKZnjLlBYJ3I';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recSTVpnGNqGVdnUn')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recSTVpnGNqGVdnUn', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Marc Jenkins', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Marc Jenkins', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'recSTVpnGNqGVdnUn';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recTCzBt0getfgavY')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recTCzBt0getfgavY', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Melissa Gonzalez', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Melissa Gonzalez', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recTCzBt0getfgavY';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recXL8EJhCVlpvLlN')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recXL8EJhCVlpvLlN', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Clara Rotelli', 
                        
                                '2016-10-30T19:55:41Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Clara Rotelli', 
                                [createdTime] = '2016-10-30T19:55:41Z'
                        WHERE AttendanceId = 'recXL8EJhCVlpvLlN';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recXLes1zH9H3Dbk0')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recXLes1zH9H3Dbk0', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Stephan Oswald', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Stephan Oswald', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'recXLes1zH9H3Dbk0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recZdqVHUszdCYKbv')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recZdqVHUszdCYKbv', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Edith Lindon', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Edith Lindon', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recZdqVHUszdCYKbv';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recaGLziUf8RNZLZn')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recaGLziUf8RNZLZn', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Mattheus Anderson', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Mattheus Anderson', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recaGLziUf8RNZLZn';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'reccSVrXViRwYGy5s')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'reccSVrXViRwYGy5s', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Claudia Siv', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Claudia Siv', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'reccSVrXViRwYGy5s';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recdDaPPl5muXvACD')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recdDaPPl5muXvACD', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Partners Dinner: SecureTech 2017 â€” Marcellus Wong', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Marcellus Wong', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'recdDaPPl5muXvACD';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'receqWZvpqC129oR6')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'receqWZvpqC129oR6', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Bernard Casper', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Bernard Casper', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'receqWZvpqC129oR6';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rechylDzVUOuJP9ve')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rechylDzVUOuJP9ve', 
                        
                                'Wasn''t able to make this event due to sickness', 
                        
                                'true', 
                        
                                'true', 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Kendrick Anar', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Wasn''t able to make this event due to sickness', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Kendrick Anar', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rechylDzVUOuJP9ve';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recjuGV5D0WNuy4cG')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recjuGV5D0WNuy4cG', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Deepa Vartak', 
                        
                                '2016-10-30T19:55:39Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Deepa Vartak', 
                                [createdTime] = '2016-10-30T19:55:39Z'
                        WHERE AttendanceId = 'recjuGV5D0WNuy4cG';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recmPETMorf0cXiuT')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recmPETMorf0cXiuT', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Gabriella Lily', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Gabriella Lily', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'recmPETMorf0cXiuT';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recrnSSjXMuomkjes')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recrnSSjXMuomkjes', 
                        
                                NULL, 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Claudia Siv', 
                        
                                '2016-10-30T19:57:57Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Claudia Siv', 
                                [createdTime] = '2016-10-30T19:57:57Z'
                        WHERE AttendanceId = 'recrnSSjXMuomkjes';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recvpa8tUIibvKUzy')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recvpa8tUIibvKUzy', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Emily Rintaro', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Emily Rintaro', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recvpa8tUIibvKUzy';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recxyV3MPBGTwqheH')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recxyV3MPBGTwqheH', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Belinda Chen', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Belinda Chen', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recxyV3MPBGTwqheH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recyBAi8WWmXfzfZk')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recyBAi8WWmXfzfZk', 
                        
                                NULL, 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Deepa Vartak', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Deepa Vartak', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recyBAi8WWmXfzfZk';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: EventDate
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'rec2voQMAURBvhLp8')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'rec2voQMAURBvhLp8', 
                        
                                'Jan18 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2018-01-11', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:52:18Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Jan18 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2018-01-11', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:52:18Z'
                        WHERE EventDateId = 'rec2voQMAURBvhLp8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recOzQpVCMTB2yVjR')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recOzQpVCMTB2yVjR', 
                        
                                'The Future of Security', 
                        
                                'Seminar', 
                        
                                '2018-03-30', 
                        
                                'CEO Sabrina Dali will be a panelist on "The Future of Security" discussing major trends and themes in security', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:51:37Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'The Future of Security', 
                                [Type] = 'Seminar', 
                                [StartDate] = '2018-03-30', 
                                [Details] = 'CEO Sabrina Dali will be a panelist on "The Future of Security" discussing major trends and themes in security', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:51:37Z'
                        WHERE EventDateId = 'recOzQpVCMTB2yVjR';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recSdxFVvvF6uf4IH')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recSdxFVvvF6uf4IH', 
                        
                                'SecureTech 2017', 
                        
                                'Conference', 
                        
                                '2017-11-03', 
                        
                                'A mid-sized security technology conferenceâ€”should piggyback on this with Partners Dinner', 
                        
                                '2017-11-05', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2017-10-26T23:53:12Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'SecureTech 2017', 
                                [Type] = 'Conference', 
                                [StartDate] = '2017-11-03', 
                                [Details] = 'A mid-sized security technology conferenceâ€”should piggyback on this with Partners Dinner', 
                                [EndDate] = '2017-11-05', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2017-10-26T23:53:12Z'
                        WHERE EventDateId = 'recSdxFVvvF6uf4IH';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recUlffyTlxk1a479')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recUlffyTlxk1a479', 
                        
                                'Dec17 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2017-12-15', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-30T19:15:02Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Dec17 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2017-12-15', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-30T19:15:02Z'
                        WHERE EventDateId = 'recUlffyTlxk1a479';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recWPCB8gdbcmgBYk')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recWPCB8gdbcmgBYk', 
                        
                                '1/5/2018 Influencer Dinner', 
                        
                                'Dinner Event', 
                        
                                '2018-01-05', 
                        
                                'A small dinner event targeted at building relationships with various influencers in the home/security community with PorchCam', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:58:20Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = '1/5/2018 Influencer Dinner', 
                                [Type] = 'Dinner Event', 
                                [StartDate] = '2018-01-05', 
                                [Details] = 'A small dinner event targeted at building relationships with various influencers in the home/security community with PorchCam', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:58:20Z'
                        WHERE EventDateId = 'recWPCB8gdbcmgBYk';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recXDGd2uBYA2Xu3f')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recXDGd2uBYA2Xu3f', 
                        
                                'Is 2018 the year for the  ''Internet of Things''?', 
                        
                                'Seminar', 
                        
                                '2018-01-19', 
                        
                                'We''re hosting a small meet-up on the Internet of Things at our office with speakers from various companies around the Bay Area.', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:58:20Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Is 2018 the year for the  ''Internet of Things''?', 
                                [Type] = 'Seminar', 
                                [StartDate] = '2018-01-19', 
                                [Details] = 'We''re hosting a small meet-up on the Internet of Things at our office with speakers from various companies around the Bay Area.', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:58:20Z'
                        WHERE EventDateId = 'recXDGd2uBYA2Xu3f';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recXLFbPgs8x5kk3f')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'Demo @ Home & Garden Fair', 
                        
                                'Demo', 
                        
                                '2017-12-10', 
                        
                                'We have a slot at the demo area of the Home & Garden fair where we''ll be able to show off and demonstrate PorchCam''s capabilities in front of an audience for an hour', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '4', 
                        
                                '2016-10-28T23:51:37Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Demo @ Home & Garden Fair', 
                                [Type] = 'Demo', 
                                [StartDate] = '2017-12-10', 
                                [Details] = 'We have a slot at the demo area of the Home & Garden fair where we''ll be able to show off and demonstrate PorchCam''s capabilities in front of an audience for an hour', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-28T23:51:37Z'
                        WHERE EventDateId = 'recXLFbPgs8x5kk3f';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recY4gLDqo49Vfm6x')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recY4gLDqo49Vfm6x', 
                        
                                'Home & Garden Fair', 
                        
                                'Conference', 
                        
                                '2017-12-09', 
                        
                                'Good opportunity for us to demo', 
                        
                                '2017-12-10', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2017-10-26T23:54:32Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Home & Garden Fair', 
                                [Type] = 'Conference', 
                                [StartDate] = '2017-12-09', 
                                [Details] = 'Good opportunity for us to demo', 
                                [EndDate] = '2017-12-10', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2017-10-26T23:54:32Z'
                        WHERE EventDateId = 'recY4gLDqo49Vfm6x';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recb8TB0D3RA3pewz')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'Nov17 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2017-11-10', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                '9', 
                        
                                '17', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Nov17 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2017-11-10', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '9', 
                                [ofInvites] = '17', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'recb8TB0D3RA3pewz';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'reclxejVkHhjIdBm1')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'Nov17 VIP Customer Webinar', 
                        
                                'Webinar', 
                        
                                '2017-11-15', 
                        
                                'A webinar led by Jackie Pollack, Head of Product, for our VIP customers.

We''ll walk through upcoming features that''ll be released soon, our product roadmap, and take time to address any questions from attendees', 
                        
                                NULL, 
                        
                                '4', 
                        
                                '4', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Nov17 VIP Customer Webinar', 
                                [Type] = 'Webinar', 
                                [StartDate] = '2017-11-15', 
                                [Details] = 'A webinar led by Jackie Pollack, Head of Product, for our VIP customers.

We''ll walk through upcoming features that''ll be released soon, our product roadmap, and take time to address any questions from attendees', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '4', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'reclxejVkHhjIdBm1';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recoyMEIH3czHbx2F')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'Partners Dinner: SecureTech 2017', 
                        
                                'Dinner Event', 
                        
                                '2017-11-03', 
                        
                                'An invite-only small group dinner for PorchCam partners who are attending the SecureTech 2017 conference.

Goal is to build stronger relationships with our partners and have our partners get to know each other as well', 
                        
                                NULL, 
                        
                                '3', 
                        
                                '4', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Partners Dinner: SecureTech 2017', 
                                [Type] = 'Dinner Event', 
                                [StartDate] = '2017-11-03', 
                                [Details] = 'An invite-only small group dinner for PorchCam partners who are attending the SecureTech 2017 conference.

Goal is to build stronger relationships with our partners and have our partners get to know each other as well', 
                                [EndDate] = NULL, 
                                [ofAttendees] = '3', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'recoyMEIH3czHbx2F';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: VIP
            --  STATIC: 
            --  Rows: 17
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec0mmaAVLtg4ol3e')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec0mmaAVLtg4ol3e', 
                        
                                'Bernard Casper', 
                        
                                'Chicago', 
                        
                                'bernard@email.com', 
                        
                                '929 Garfunkel St Chicago, Il 28921', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Bernard Casper', 
                                [Location] = 'Chicago', 
                                [Email] = 'bernard@email.com', 
                                [Address] = '929 Garfunkel St Chicago, Il 28921', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'rec0mmaAVLtg4ol3e';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec4K71y2HCAU0YYW')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec4K71y2HCAU0YYW', 
                        
                                'Lorraine Ljuba', 
                        
                                'Chicago', 
                        
                                'lorraine@email.com', 
                        
                                '229 Agave Tree Lane Chicago, IL 29283', 
                        
                                'Influencer', 
                        
                                'Leads a meet-up group for security tech and IoT at home', 
                        
                                '1', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Lorraine Ljuba', 
                                [Location] = 'Chicago', 
                                [Email] = 'lorraine@email.com', 
                                [Address] = '229 Agave Tree Lane Chicago, IL 29283', 
                                [Type] = 'Influencer', 
                                [Notes] = 'Leads a meet-up group for security tech and IoT at home', 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'rec4K71y2HCAU0YYW';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec7nOhkSFiGcRPSI')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec7nOhkSFiGcRPSI', 
                        
                                'Marcellus Wong', 
                        
                                'London', 
                        
                                'marcellus@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:19Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Marcellus Wong', 
                                [Location] = 'London', 
                                [Email] = 'marcellus@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:19Z'
                        WHERE VIPId = 'rec7nOhkSFiGcRPSI';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recAdlR7C4nqRKbvZ')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recAdlR7C4nqRKbvZ', 
                        
                                'Emily Rintaro', 
                        
                                'NYC', 
                        
                                'emily@email.com', 
                        
                                '925 7th Avenue, Apt #205 New York City, NY 38210', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Emily Rintaro', 
                                [Location] = 'NYC', 
                                [Email] = 'emily@email.com', 
                                [Address] = '925 7th Avenue, Apt #205 New York City, NY 38210', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'recAdlR7C4nqRKbvZ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recJtOVAGdrGLmJNZ')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recJtOVAGdrGLmJNZ', 
                        
                                'Clara Rotelli', 
                        
                                'Bay Area', 
                        
                                'clara@email.com', 
                        
                                '838 California Drive Redwood City, 82828', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Clara Rotelli', 
                                [Location] = 'Bay Area', 
                                [Email] = 'clara@email.com', 
                                [Address] = '838 California Drive Redwood City, 82828', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'recJtOVAGdrGLmJNZ';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recMgZq6PqM0NbFwp')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recMgZq6PqM0NbFwp', 
                        
                                'Edith Lindon', 
                        
                                'Bay Area', 
                        
                                'edith@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Edith Lindon', 
                                [Location] = 'Bay Area', 
                                [Email] = 'edith@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recMgZq6PqM0NbFwp';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recN4LyxDveiW85XF')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recN4LyxDveiW85XF', 
                        
                                'Mattheus Anderson', 
                        
                                'Chicago', 
                        
                                'matthaeus@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Mattheus Anderson', 
                                [Location] = 'Chicago', 
                                [Email] = 'matthaeus@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recN4LyxDveiW85XF';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recYjpC4fnLqXdveG')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recYjpC4fnLqXdveG', 
                        
                                'Belinda Chen', 
                        
                                'Bay Area', 
                        
                                'belinda@email.com', 
                        
                                '7391 3rd Ave San Francisco, CA 94301', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Belinda Chen', 
                                [Location] = 'Bay Area', 
                                [Email] = 'belinda@email.com', 
                                [Address] = '7391 3rd Ave San Francisco, CA 94301', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'recYjpC4fnLqXdveG';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recas9Q8MsQ2hJyMj')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recas9Q8MsQ2hJyMj', 
                        
                                'Kendrick Anar', 
                        
                                'NYC', 
                        
                                'kendrick@email.com', 
                        
                                '9298 Bellingham Way Brooklyn, NY 29283', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:49Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Kendrick Anar', 
                                [Location] = 'NYC', 
                                [Email] = 'kendrick@email.com', 
                                [Address] = '9298 Bellingham Way Brooklyn, NY 29283', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:49Z'
                        WHERE VIPId = 'recas9Q8MsQ2hJyMj';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rech4iA1U73j9OnZc')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rech4iA1U73j9OnZc', 
                        
                                'Marc Jenkins', 
                        
                                'Austin', 
                        
                                'marc@email.com', 
                        
                                '1947 Desert Road Drive Austin, TX 84832', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:15Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Marc Jenkins', 
                                [Location] = 'Austin', 
                                [Email] = 'marc@email.com', 
                                [Address] = '1947 Desert Road Drive Austin, TX 84832', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:15Z'
                        WHERE VIPId = 'rech4iA1U73j9OnZc';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reckW757QFTARED8m')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reckW757QFTARED8m', 
                        
                                'Melissa Gonzalez', 
                        
                                'Chicago', 
                        
                                'melissa@email.com', 
                        
                                '305 Gale Lane Chicago, IL 3828', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Melissa Gonzalez', 
                                [Location] = 'Chicago', 
                                [Email] = 'melissa@email.com', 
                                [Address] = '305 Gale Lane Chicago, IL 3828', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'reckW757QFTARED8m';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reckfN07T4ywoYKCF')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reckfN07T4ywoYKCF', 
                        
                                'Gabriella Lily', 
                        
                                'Austin', 
                        
                                'gabriella@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Prominent blogger who writes about home safety', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Gabriella Lily', 
                                [Location] = 'Austin', 
                                [Email] = 'gabriella@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Prominent blogger who writes about home safety', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'reckfN07T4ywoYKCF';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recpsaBPr5o5iWzY8')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recpsaBPr5o5iWzY8', 
                        
                                'Stephan Oswald', 
                        
                                'Chicago', 
                        
                                'stephan@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Organizer of the home security automation movement', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Stephan Oswald', 
                                [Location] = 'Chicago', 
                                [Email] = 'stephan@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Organizer of the home security automation movement', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recpsaBPr5o5iWzY8';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recse5Cf8zeJ3XSey')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recse5Cf8zeJ3XSey', 
                        
                                'Katrina Peterson', 
                        
                                'Bay Area', 
                        
                                'katrina@email.com', 
                        
                                '730 Escondido Rd San Mateo, CA 94305', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:12Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Katrina Peterson', 
                                [Location] = 'Bay Area', 
                                [Email] = 'katrina@email.com', 
                                [Address] = '730 Escondido Rd San Mateo, CA 94305', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:12Z'
                        WHERE VIPId = 'recse5Cf8zeJ3XSey';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recuK2ol3AualSYUm')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recuK2ol3AualSYUm', 
                        
                                'Claudia Siv', 
                        
                                'Bay Area', 
                        
                                'claudia@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Web columnist on tech & security topics', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Claudia Siv', 
                                [Location] = 'Bay Area', 
                                [Email] = 'claudia@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Web columnist on tech & security topics', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'recuK2ol3AualSYUm';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recyhb4ZSsL7CwpK0')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recyhb4ZSsL7CwpK0', 
                        
                                'Reuben Ettore', 
                        
                                'NYC', 
                        
                                'reuben@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Reuben Ettore', 
                                [Location] = 'NYC', 
                                [Email] = 'reuben@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recyhb4ZSsL7CwpK0';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reczkQra1mDJRttIu')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reczkQra1mDJRttIu', 
                        
                                'Deepa Vartak', 
                        
                                'NYC', 
                        
                                'deepa@email.com', 
                        
                                '2820 Lexington Ave, Apt #5 New York City, NY 38821', 
                        
                                'VIP Customer', 
                        
                                'Customer who has purchased the most PorchCams (25!)', 
                        
                                '2', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Deepa Vartak', 
                                [Location] = 'NYC', 
                                [Email] = 'deepa@email.com', 
                                [Address] = '2820 Lexington Ave, Apt #5 New York City, NY 38821', 
                                [Type] = 'VIP Customer', 
                                [Notes] = 'Customer who has purchased the most PorchCams (25!)', 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'reczkQra1mDJRttIu';
                    END
                
            
 
        
        
        
        
        
            -- INSERT: Venue
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'rec4xyPsLd4sK8H82')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'rec4xyPsLd4sK8H82', 
                        
                                'Jordan''s Steakhouse', 
                        
                                '105 Margrave Pl San Francisco, CA 94133', 
                        
                                'Great restaurant for a small group dinner as we can book the private room', 
                        
                                'ðŸ”µ eyJpIjoiMTA1IE1hcmdyYXZlIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzIiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiIxMDUgTWFyZ3JhdmUgUGwsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzLCBVU0EiLCJsYXQiOjM3Ljc5OTQ3MDUsImxuZyI6LTEyMi40MDY5Nzc2fSwiZSI6MTUyNjA3NzUxNjU4MH0=', 
                        
                                '2016-10-30T19:17:49Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Jordan''s Steakhouse', 
                                [Address] = '105 Margrave Pl San Francisco, CA 94133', 
                                [Notes] = 'Great restaurant for a small group dinner as we can book the private room', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMTA1IE1hcmdyYXZlIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzIiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiIxMDUgTWFyZ3JhdmUgUGwsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzLCBVU0EiLCJsYXQiOjM3Ljc5OTQ3MDUsImxuZyI6LTEyMi40MDY5Nzc2fSwiZSI6MTUyNjA3NzUxNjU4MH0=', 
                                [createdTime] = '2016-10-30T19:17:49Z'
                        WHERE VenueId = 'rec4xyPsLd4sK8H82';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recBz4VkZchIvJ3MP')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recBz4VkZchIvJ3MP', 
                        
                                'San Francisco Conference Center', 
                        
                                '1000 Beale St, San Francisco, CA 94105', 
                        
                                'Extremely large conference center (generally hosts events for up to 10,000+ people)', 
                        
                                'ðŸ”µ eyJpIjoiMTAwMCBCZWFsZSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDUiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjEwMDAgQmVhbGUgU3QsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA1LCBVU0EiLCJsYXQiOjM3Ljc4NTU4MDEsImxuZyI6LTEyMi4zODg4NjcxOTk5OTk5OX0sImUiOjE1MjYwNzc1MTk2MzV9', 
                        
                                '2016-10-30T19:18:42Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'San Francisco Conference Center', 
                                [Address] = '1000 Beale St, San Francisco, CA 94105', 
                                [Notes] = 'Extremely large conference center (generally hosts events for up to 10,000+ people)', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMTAwMCBCZWFsZSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDUiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjEwMDAgQmVhbGUgU3QsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA1LCBVU0EiLCJsYXQiOjM3Ljc4NTU4MDEsImxuZyI6LTEyMi4zODg4NjcxOTk5OTk5OX0sImUiOjE1MjYwNzc1MTk2MzV9', 
                                [createdTime] = '2016-10-30T19:18:42Z'
                        WHERE VenueId = 'recBz4VkZchIvJ3MP';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recPqnTJFtVfythjg')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recPqnTJFtVfythjg', 
                        
                                'Hamachi Sushi', 
                        
                                '770 Taber Pl San Francisco, CA 94107', 
                        
                                'Jasmine suggested this restaurant and said it was great ambiance for this type of event (though it''s potentially a little noisy)', 
                        
                                'ðŸ”µ eyJpIjoiNzcwIFRhYmVyIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA3IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiJUYWJlciBQbCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxOTQ5NSwibG5nIjotMTIyLjM5NDQzNjcwMDAwMDAzfSwiZSI6MTUyNjA3NzUyMDMwOH0=', 
                        
                                '2016-10-30T19:19:49Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Hamachi Sushi', 
                                [Address] = '770 Taber Pl San Francisco, CA 94107', 
                                [Notes] = 'Jasmine suggested this restaurant and said it was great ambiance for this type of event (though it''s potentially a little noisy)', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiNzcwIFRhYmVyIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA3IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiJUYWJlciBQbCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxOTQ5NSwibG5nIjotMTIyLjM5NDQzNjcwMDAwMDAzfSwiZSI6MTUyNjA3NzUyMDMwOH0=', 
                                [createdTime] = '2016-10-30T19:19:49Z'
                        WHERE VenueId = 'recPqnTJFtVfythjg';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recXhSz6tcAs2pDAf')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recXhSz6tcAs2pDAf', 
                        
                                'Rose Pavilion', 
                        
                                '314 Tandang Sora St, San Francisco, CA 94107', 
                        
                                'Large multi-purpose event space', 
                        
                                'ðŸ”µ eyJpIjoiMzE0IFRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDciLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IlRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxNjg0NiwibG5nIjotMTIyLjQwMDA0Nzl9LCJlIjoxNTI2MDc3NTE3NDA0fQ==', 
                        
                                '2016-10-30T19:18:07Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Rose Pavilion', 
                                [Address] = '314 Tandang Sora St, San Francisco, CA 94107', 
                                [Notes] = 'Large multi-purpose event space', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMzE0IFRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDciLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IlRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxNjg0NiwibG5nIjotMTIyLjQwMDA0Nzl9LCJlIjoxNTI2MDc3NTE3NDA0fQ==', 
                                [createdTime] = '2016-10-30T19:18:07Z'
                        WHERE VenueId = 'recXhSz6tcAs2pDAf';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recn9vuZXZOzxszN5')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recn9vuZXZOzxszN5', 
                        
                                'Oikos Mediterranean', 
                        
                                '90 Maiden Ln San Francisco, CA 94108', 
                        
                                'Selected this venue to test out having a meetup at a restaurant. Currently booked the outdoor patio space which seems like it''ll be a good place for mingling', 
                        
                                'ðŸ”µ eyJpIjoiOTAgTWFpZGVuIExuIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiI5MCBNYWlkZW4gTG4sIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4LCBVU0EiLCJsYXQiOjM3Ljc4ODM2NTYsImxuZyI6LTEyMi40MDUwNDQ1MDAwMDAwM30sImUiOjE1MjYwNzc1MTg5MDN9', 
                        
                                '2016-10-30T19:20:58Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Oikos Mediterranean', 
                                [Address] = '90 Maiden Ln San Francisco, CA 94108', 
                                [Notes] = 'Selected this venue to test out having a meetup at a restaurant. Currently booked the outdoor patio space which seems like it''ll be a good place for mingling', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiOTAgTWFpZGVuIExuIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiI5MCBNYWlkZW4gTG4sIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4LCBVU0EiLCJsYXQiOjM3Ljc4ODM2NTYsImxuZyI6LTEyMi40MDUwNDQ1MDAwMDAwM30sImUiOjE1MjYwNzc1MTg5MDN9', 
                                [createdTime] = '2016-10-30T19:20:58Z'
                        WHERE VenueId = 'recn9vuZXZOzxszN5';
                    END
                

                    -- INSERT VALUES
                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recxUyRUMfjnSWJvy')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recxUyRUMfjnSWJvy', 
                        
                                'PorchCam SF Office', 
                        
                                '49 Powell St, San Francisco, CA 94102', 
                        
                                'Office can host events from up to 75 people, though we''ll need to get explicit approval to host an event of 50 or more.', 
                        
                                'ðŸ”µ eyJpIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiIsIm8iOnsic3RhdHVzIjoiT0siLCJmb3JtYXR0ZWRBZGRyZXNzIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiwgVVNBIiwibGF0IjozNy43ODUyMTAxLCJsbmciOi0xMjIuNDA4MTAyNjk5OTk5OTd9LCJlIjoxNTI2MDc3NTE4MTcyfQ==', 
                        
                                '2016-10-30T19:19:01Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'PorchCam SF Office', 
                                [Address] = '49 Powell St, San Francisco, CA 94102', 
                                [Notes] = 'Office can host events from up to 75 people, though we''ll need to get explicit approval to host an event of 50 or more.', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiIsIm8iOnsic3RhdHVzIjoiT0siLCJmb3JtYXR0ZWRBZGRyZXNzIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiwgVVNBIiwibGF0IjozNy43ODUyMTAxLCJsbmciOi0xMjIuNDA4MTAyNjk5OTk5OTd9LCJlIjoxNTI2MDc3NTE4MTcyfQ==', 
                                [createdTime] = '2016-10-30T19:19:01Z'
                        WHERE VenueId = 'recxUyRUMfjnSWJvy';
                    END
                
            
 

-- ADD RELATIONSHIPS
   
        
        
        
        
        
            -- ADD ALL DATA FOR: Attendance
            --  STATIC: 
            --  Rows: 29
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec1T1Ye5nLCCwNBx')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec1T1Ye5nLCCwNBx', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recse5Cf8zeJ3XSey', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Katrina Peterson', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recse5Cf8zeJ3XSey', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Katrina Peterson', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'rec1T1Ye5nLCCwNBx';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec45fEyEZ8nNooHr')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec45fEyEZ8nNooHr', 
                        
                                NULL, 
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'rec4K71y2HCAU0YYW', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Lorraine Ljuba', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recXLFbPgs8x5kk3f', 
                                [Person] = 'rec4K71y2HCAU0YYW', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Lorraine Ljuba', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'rec45fEyEZ8nNooHr';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec5vPpvyvapGbgGg')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec5vPpvyvapGbgGg', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recJtOVAGdrGLmJNZ', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Clara Rotelli', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recJtOVAGdrGLmJNZ', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Clara Rotelli', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec5vPpvyvapGbgGg';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec8tCWDjJvvpAGyA')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec8tCWDjJvvpAGyA', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recyhb4ZSsL7CwpK0', 
                        
                                'true', 
                        
                                'true', 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Reuben Ettore', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recyhb4ZSsL7CwpK0', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Reuben Ettore', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec8tCWDjJvvpAGyA';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rec9IWqRYEPhBKDW9')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rec9IWqRYEPhBKDW9', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'reckfN07T4ywoYKCF', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Gabriella Lily', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'reckfN07T4ywoYKCF', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Gabriella Lily', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rec9IWqRYEPhBKDW9';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recGxGoHGZha3x5xq')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recGxGoHGZha3x5xq', 
                        
                                NULL, 
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'recyhb4ZSsL7CwpK0', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Reuben Ettore', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recoyMEIH3czHbx2F', 
                                [Person] = 'recyhb4ZSsL7CwpK0', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Reuben Ettore', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recGxGoHGZha3x5xq';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recHU8SXYlwUBjkV2')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recHU8SXYlwUBjkV2', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'rec7nOhkSFiGcRPSI', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Marcellus Wong', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'rec7nOhkSFiGcRPSI', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Marcellus Wong', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recHU8SXYlwUBjkV2';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recIu7rCfvTtAk2UM')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recIu7rCfvTtAk2UM', 
                        
                                'Matthaeus was really excited about this small event and wants to be invited to any in the future', 
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'recN4LyxDveiW85XF', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Mattheus Anderson', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Matthaeus was really excited about this small event and wants to be invited to any in the future', 
                                [Event] = 'recoyMEIH3czHbx2F', 
                                [Person] = 'recN4LyxDveiW85XF', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Mattheus Anderson', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recIu7rCfvTtAk2UM';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recJKpD3DX2Rlbs24')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recJKpD3DX2Rlbs24', 
                        
                                NULL, 
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'recMgZq6PqM0NbFwp', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Partners Dinner: SecureTech 2017 â€” Edith Lindon', 
                        
                                '2016-10-25T17:46:43Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recoyMEIH3czHbx2F', 
                                [Person] = 'recMgZq6PqM0NbFwp', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Edith Lindon', 
                                [createdTime] = '2016-10-25T17:46:43Z'
                        WHERE AttendanceId = 'recJKpD3DX2Rlbs24';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recN0zZXdNkUz0AHW')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recN0zZXdNkUz0AHW', 
                        
                                'Wanted to submit photos and information about this event to an online newsletter that she''s a part of', 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'rec4K71y2HCAU0YYW', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Lorraine Ljuba', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Wanted to submit photos and information about this event to an online newsletter that she''s a part of', 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'rec4K71y2HCAU0YYW', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Lorraine Ljuba', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recN0zZXdNkUz0AHW';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recOfGA5JvdnhsQqm')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recOfGA5JvdnhsQqm', 
                        
                                NULL, 
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'rec0mmaAVLtg4ol3e', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Bernard Casper', 
                        
                                '2016-10-30T19:55:44Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'reclxejVkHhjIdBm1', 
                                [Person] = 'rec0mmaAVLtg4ol3e', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Bernard Casper', 
                                [createdTime] = '2016-10-30T19:55:44Z'
                        WHERE AttendanceId = 'recOfGA5JvdnhsQqm';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recQr1pLkEE1UL1t0')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recQr1pLkEE1UL1t0', 
                        
                                NULL, 
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'recYjpC4fnLqXdveG', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Belinda Chen', 
                        
                                '2016-10-30T19:55:32Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'reclxejVkHhjIdBm1', 
                                [Person] = 'recYjpC4fnLqXdveG', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Belinda Chen', 
                                [createdTime] = '2016-10-30T19:55:32Z'
                        WHERE AttendanceId = 'recQr1pLkEE1UL1t0';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recS8jKZnjLlBYJ3I')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recS8jKZnjLlBYJ3I', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recpsaBPr5o5iWzY8', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Stephan Oswald', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recpsaBPr5o5iWzY8', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Stephan Oswald', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recS8jKZnjLlBYJ3I';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recSTVpnGNqGVdnUn')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recSTVpnGNqGVdnUn', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'rech4iA1U73j9OnZc', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Marc Jenkins', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'rech4iA1U73j9OnZc', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Marc Jenkins', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'recSTVpnGNqGVdnUn';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recTCzBt0getfgavY')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recTCzBt0getfgavY', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'reckW757QFTARED8m', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Melissa Gonzalez', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'reckW757QFTARED8m', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Melissa Gonzalez', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recTCzBt0getfgavY';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recXL8EJhCVlpvLlN')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recXL8EJhCVlpvLlN', 
                        
                                NULL, 
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'recJtOVAGdrGLmJNZ', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Clara Rotelli', 
                        
                                '2016-10-30T19:55:41Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'reclxejVkHhjIdBm1', 
                                [Person] = 'recJtOVAGdrGLmJNZ', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Clara Rotelli', 
                                [createdTime] = '2016-10-30T19:55:41Z'
                        WHERE AttendanceId = 'recXL8EJhCVlpvLlN';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recXLes1zH9H3Dbk0')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recXLes1zH9H3Dbk0', 
                        
                                NULL, 
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'recpsaBPr5o5iWzY8', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Stephan Oswald', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recXLFbPgs8x5kk3f', 
                                [Person] = 'recpsaBPr5o5iWzY8', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Stephan Oswald', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'recXLes1zH9H3Dbk0';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recZdqVHUszdCYKbv')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recZdqVHUszdCYKbv', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recMgZq6PqM0NbFwp', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Edith Lindon', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recMgZq6PqM0NbFwp', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Edith Lindon', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recZdqVHUszdCYKbv';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recaGLziUf8RNZLZn')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recaGLziUf8RNZLZn', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recN4LyxDveiW85XF', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Mattheus Anderson', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recN4LyxDveiW85XF', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Mattheus Anderson', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recaGLziUf8RNZLZn';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'reccSVrXViRwYGy5s')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'reccSVrXViRwYGy5s', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recuK2ol3AualSYUm', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Claudia Siv', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recuK2ol3AualSYUm', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Claudia Siv', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'reccSVrXViRwYGy5s';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recdDaPPl5muXvACD')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recdDaPPl5muXvACD', 
                        
                                NULL, 
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'rec7nOhkSFiGcRPSI', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Partners Dinner: SecureTech 2017 â€” Marcellus Wong', 
                        
                                '2016-10-30T19:46:29Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recoyMEIH3czHbx2F', 
                                [Person] = 'rec7nOhkSFiGcRPSI', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Partners Dinner: SecureTech 2017 â€” Marcellus Wong', 
                                [createdTime] = '2016-10-30T19:46:29Z'
                        WHERE AttendanceId = 'recdDaPPl5muXvACD';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'receqWZvpqC129oR6')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'receqWZvpqC129oR6', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'rec0mmaAVLtg4ol3e', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Bernard Casper', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'rec0mmaAVLtg4ol3e', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Bernard Casper', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'receqWZvpqC129oR6';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'rechylDzVUOuJP9ve')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'rechylDzVUOuJP9ve', 
                        
                                'Wasn''t able to make this event due to sickness', 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recas9Q8MsQ2hJyMj', 
                        
                                'true', 
                        
                                'true', 
                        
                                NULL, 
                        
                                'Nov17 Customer Meetup â€” Kendrick Anar', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = 'Wasn''t able to make this event due to sickness', 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recas9Q8MsQ2hJyMj', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = NULL, 
                                [Name] = 'Nov17 Customer Meetup â€” Kendrick Anar', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'rechylDzVUOuJP9ve';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recjuGV5D0WNuy4cG')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recjuGV5D0WNuy4cG', 
                        
                                NULL, 
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'reczkQra1mDJRttIu', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 VIP Customer Webinar â€” Deepa Vartak', 
                        
                                '2016-10-30T19:55:39Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'reclxejVkHhjIdBm1', 
                                [Person] = 'reczkQra1mDJRttIu', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 VIP Customer Webinar â€” Deepa Vartak', 
                                [createdTime] = '2016-10-30T19:55:39Z'
                        WHERE AttendanceId = 'recjuGV5D0WNuy4cG';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recmPETMorf0cXiuT')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recmPETMorf0cXiuT', 
                        
                                NULL, 
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'reckfN07T4ywoYKCF', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Gabriella Lily', 
                        
                                '2016-10-30T19:58:09Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recXLFbPgs8x5kk3f', 
                                [Person] = 'reckfN07T4ywoYKCF', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Gabriella Lily', 
                                [createdTime] = '2016-10-30T19:58:09Z'
                        WHERE AttendanceId = 'recmPETMorf0cXiuT';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recrnSSjXMuomkjes')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recrnSSjXMuomkjes', 
                        
                                NULL, 
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'recuK2ol3AualSYUm', 
                        
                                'true', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                'Demo @ Home & Garden Fair â€” Claudia Siv', 
                        
                                '2016-10-30T19:57:57Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recXLFbPgs8x5kk3f', 
                                [Person] = 'recuK2ol3AualSYUm', 
                                [Invited] = 'true', 
                                [RSVPed] = NULL, 
                                [Showedup] = NULL, 
                                [Name] = 'Demo @ Home & Garden Fair â€” Claudia Siv', 
                                [createdTime] = '2016-10-30T19:57:57Z'
                        WHERE AttendanceId = 'recrnSSjXMuomkjes';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recvpa8tUIibvKUzy')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recvpa8tUIibvKUzy', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recAdlR7C4nqRKbvZ', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Emily Rintaro', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recAdlR7C4nqRKbvZ', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Emily Rintaro', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recvpa8tUIibvKUzy';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recxyV3MPBGTwqheH')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recxyV3MPBGTwqheH', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'recYjpC4fnLqXdveG', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Belinda Chen', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'recYjpC4fnLqXdveG', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Belinda Chen', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recxyV3MPBGTwqheH';
                    END
                

                    IF NOT EXISTS (SELECT AttendanceId FROM Attendance WHERE AttendanceId = 'recyBAi8WWmXfzfZk')
                    BEGIN
                        INSERT INTO [Attendance] ([AttendanceId] , [Notes] , [Event] , [Person] , [Invited] , [RSVPed] , [Showedup] , [Name] , [createdTime] ) VALUES (
                        
                                'recyBAi8WWmXfzfZk', 
                        
                                NULL, 
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'reczkQra1mDJRttIu', 
                        
                                'true', 
                        
                                'true', 
                        
                                'true', 
                        
                                'Nov17 Customer Meetup â€” Deepa Vartak', 
                        
                                '2016-10-30T19:53:18Z');
                    END ELSE BEGIN
                        UPDATE  [Attendance] 
                            SET 
                                [Notes] = NULL, 
                                [Event] = 'recb8TB0D3RA3pewz', 
                                [Person] = 'reczkQra1mDJRttIu', 
                                [Invited] = 'true', 
                                [RSVPed] = 'true', 
                                [Showedup] = 'true', 
                                [Name] = 'Nov17 Customer Meetup â€” Deepa Vartak', 
                                [createdTime] = '2016-10-30T19:53:18Z'
                        WHERE AttendanceId = 'recyBAi8WWmXfzfZk';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: EventDate
            --  STATIC: 
            --  Rows: 11
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'rec2voQMAURBvhLp8')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'rec2voQMAURBvhLp8', 
                        
                                'Jan18 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2018-01-11', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                'rec4xyPsLd4sK8H82', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:52:18Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Jan18 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2018-01-11', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [Venue] = 'rec4xyPsLd4sK8H82', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:52:18Z'
                        WHERE EventDateId = 'rec2voQMAURBvhLp8';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recOzQpVCMTB2yVjR')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recOzQpVCMTB2yVjR', 
                        
                                'The Future of Security', 
                        
                                'Seminar', 
                        
                                '2018-03-30', 
                        
                                'CEO Sabrina Dali will be a panelist on "The Future of Security" discussing major trends and themes in security', 
                        
                                NULL, 
                        
                                'recBz4VkZchIvJ3MP', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:51:37Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'The Future of Security', 
                                [Type] = 'Seminar', 
                                [StartDate] = '2018-03-30', 
                                [Details] = 'CEO Sabrina Dali will be a panelist on "The Future of Security" discussing major trends and themes in security', 
                                [EndDate] = NULL, 
                                [Venue] = 'recBz4VkZchIvJ3MP', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:51:37Z'
                        WHERE EventDateId = 'recOzQpVCMTB2yVjR';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recSdxFVvvF6uf4IH')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recSdxFVvvF6uf4IH', 
                        
                                'SecureTech 2017', 
                        
                                'Conference', 
                        
                                '2017-11-03', 
                        
                                'A mid-sized security technology conferenceâ€”should piggyback on this with Partners Dinner', 
                        
                                '2017-11-05', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2017-10-26T23:53:12Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'SecureTech 2017', 
                                [Type] = 'Conference', 
                                [StartDate] = '2017-11-03', 
                                [Details] = 'A mid-sized security technology conferenceâ€”should piggyback on this with Partners Dinner', 
                                [EndDate] = '2017-11-05', 
                                [Venue] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2017-10-26T23:53:12Z'
                        WHERE EventDateId = 'recSdxFVvvF6uf4IH';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recUlffyTlxk1a479')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recUlffyTlxk1a479', 
                        
                                'Dec17 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2017-12-15', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                'recn9vuZXZOzxszN5', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-30T19:15:02Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Dec17 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2017-12-15', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [Venue] = 'recn9vuZXZOzxszN5', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-30T19:15:02Z'
                        WHERE EventDateId = 'recUlffyTlxk1a479';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recWPCB8gdbcmgBYk')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recWPCB8gdbcmgBYk', 
                        
                                '1/5/2018 Influencer Dinner', 
                        
                                'Dinner Event', 
                        
                                '2018-01-05', 
                        
                                'A small dinner event targeted at building relationships with various influencers in the home/security community with PorchCam', 
                        
                                NULL, 
                        
                                'recPqnTJFtVfythjg', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:58:20Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = '1/5/2018 Influencer Dinner', 
                                [Type] = 'Dinner Event', 
                                [StartDate] = '2018-01-05', 
                                [Details] = 'A small dinner event targeted at building relationships with various influencers in the home/security community with PorchCam', 
                                [EndDate] = NULL, 
                                [Venue] = 'recPqnTJFtVfythjg', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:58:20Z'
                        WHERE EventDateId = 'recWPCB8gdbcmgBYk';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recXDGd2uBYA2Xu3f')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recXDGd2uBYA2Xu3f', 
                        
                                'Is 2018 the year for the  ''Internet of Things''?', 
                        
                                'Seminar', 
                        
                                '2018-01-19', 
                        
                                'We''re hosting a small meet-up on the Internet of Things at our office with speakers from various companies around the Bay Area.', 
                        
                                NULL, 
                        
                                'recxUyRUMfjnSWJvy', 
                        
                                '0', 
                        
                                '0', 
                        
                                '2016-10-28T23:58:20Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Is 2018 the year for the  ''Internet of Things''?', 
                                [Type] = 'Seminar', 
                                [StartDate] = '2018-01-19', 
                                [Details] = 'We''re hosting a small meet-up on the Internet of Things at our office with speakers from various companies around the Bay Area.', 
                                [EndDate] = NULL, 
                                [Venue] = 'recxUyRUMfjnSWJvy', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2016-10-28T23:58:20Z'
                        WHERE EventDateId = 'recXDGd2uBYA2Xu3f';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recXLFbPgs8x5kk3f')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recXLFbPgs8x5kk3f', 
                        
                                'Demo @ Home & Garden Fair', 
                        
                                'Demo', 
                        
                                '2017-12-10', 
                        
                                'We have a slot at the demo area of the Home & Garden fair where we''ll be able to show off and demonstrate PorchCam''s capabilities in front of an audience for an hour', 
                        
                                NULL, 
                        
                                'recXhSz6tcAs2pDAf', 
                        
                                '0', 
                        
                                '4', 
                        
                                '2016-10-28T23:51:37Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Demo @ Home & Garden Fair', 
                                [Type] = 'Demo', 
                                [StartDate] = '2017-12-10', 
                                [Details] = 'We have a slot at the demo area of the Home & Garden fair where we''ll be able to show off and demonstrate PorchCam''s capabilities in front of an audience for an hour', 
                                [EndDate] = NULL, 
                                [Venue] = 'recXhSz6tcAs2pDAf', 
                                [ofAttendees] = '0', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-28T23:51:37Z'
                        WHERE EventDateId = 'recXLFbPgs8x5kk3f';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recY4gLDqo49Vfm6x')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recY4gLDqo49Vfm6x', 
                        
                                'Home & Garden Fair', 
                        
                                'Conference', 
                        
                                '2017-12-09', 
                        
                                'Good opportunity for us to demo', 
                        
                                '2017-12-10', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '0', 
                        
                                '2017-10-26T23:54:32Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Home & Garden Fair', 
                                [Type] = 'Conference', 
                                [StartDate] = '2017-12-09', 
                                [Details] = 'Good opportunity for us to demo', 
                                [EndDate] = '2017-12-10', 
                                [Venue] = NULL, 
                                [ofAttendees] = '0', 
                                [ofInvites] = '0', 
                                [createdTime] = '2017-10-26T23:54:32Z'
                        WHERE EventDateId = 'recY4gLDqo49Vfm6x';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recb8TB0D3RA3pewz')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recb8TB0D3RA3pewz', 
                        
                                'Nov17 Customer Meetup', 
                        
                                'Meetup', 
                        
                                '2017-11-10', 
                        
                                'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                        
                                NULL, 
                        
                                'recxUyRUMfjnSWJvy', 
                        
                                '9', 
                        
                                '17', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Nov17 Customer Meetup', 
                                [Type] = 'Meetup', 
                                [StartDate] = '2017-11-10', 
                                [Details] = 'Our monthly customer meet-up for PorchCam owners and members of the community interested in PorchCam', 
                                [EndDate] = NULL, 
                                [Venue] = 'recxUyRUMfjnSWJvy', 
                                [ofAttendees] = '9', 
                                [ofInvites] = '17', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'recb8TB0D3RA3pewz';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'reclxejVkHhjIdBm1')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'reclxejVkHhjIdBm1', 
                        
                                'Nov17 VIP Customer Webinar', 
                        
                                'Webinar', 
                        
                                '2017-11-15', 
                        
                                'A webinar led by Jackie Pollack, Head of Product, for our VIP customers.

We''ll walk through upcoming features that''ll be released soon, our product roadmap, and take time to address any questions from attendees', 
                        
                                NULL, 
                        
                                NULL, 
                        
                                '4', 
                        
                                '4', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Nov17 VIP Customer Webinar', 
                                [Type] = 'Webinar', 
                                [StartDate] = '2017-11-15', 
                                [Details] = 'A webinar led by Jackie Pollack, Head of Product, for our VIP customers.

We''ll walk through upcoming features that''ll be released soon, our product roadmap, and take time to address any questions from attendees', 
                                [EndDate] = NULL, 
                                [Venue] = NULL, 
                                [ofAttendees] = '4', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'reclxejVkHhjIdBm1';
                    END
                

                    IF NOT EXISTS (SELECT EventDateId FROM EventDate WHERE EventDateId = 'recoyMEIH3czHbx2F')
                    BEGIN
                        INSERT INTO [EventDate] ([EventDateId] , [Name] , [Type] , [StartDate] , [Details] , [EndDate] , [Venue] , [ofAttendees] , [ofInvites] , [createdTime] ) VALUES (
                        
                                'recoyMEIH3czHbx2F', 
                        
                                'Partners Dinner: SecureTech 2017', 
                        
                                'Dinner Event', 
                        
                                '2017-11-03', 
                        
                                'An invite-only small group dinner for PorchCam partners who are attending the SecureTech 2017 conference.

Goal is to build stronger relationships with our partners and have our partners get to know each other as well', 
                        
                                NULL, 
                        
                                'rec4xyPsLd4sK8H82', 
                        
                                '3', 
                        
                                '4', 
                        
                                '2016-10-24T21:42:39Z');
                    END ELSE BEGIN
                        UPDATE  [EventDate] 
                            SET 
                                [Name] = 'Partners Dinner: SecureTech 2017', 
                                [Type] = 'Dinner Event', 
                                [StartDate] = '2017-11-03', 
                                [Details] = 'An invite-only small group dinner for PorchCam partners who are attending the SecureTech 2017 conference.

Goal is to build stronger relationships with our partners and have our partners get to know each other as well', 
                                [EndDate] = NULL, 
                                [Venue] = 'rec4xyPsLd4sK8H82', 
                                [ofAttendees] = '3', 
                                [ofInvites] = '4', 
                                [createdTime] = '2016-10-24T21:42:39Z'
                        WHERE EventDateId = 'recoyMEIH3czHbx2F';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: VIP
            --  STATIC: 
            --  Rows: 17
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec0mmaAVLtg4ol3e')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec0mmaAVLtg4ol3e', 
                        
                                'Bernard Casper', 
                        
                                'Chicago', 
                        
                                'bernard@email.com', 
                        
                                '929 Garfunkel St Chicago, Il 28921', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Bernard Casper', 
                                [Location] = 'Chicago', 
                                [Email] = 'bernard@email.com', 
                                [Address] = '929 Garfunkel St Chicago, Il 28921', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'rec0mmaAVLtg4ol3e';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec4K71y2HCAU0YYW')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec4K71y2HCAU0YYW', 
                        
                                'Lorraine Ljuba', 
                        
                                'Chicago', 
                        
                                'lorraine@email.com', 
                        
                                '229 Agave Tree Lane Chicago, IL 29283', 
                        
                                'Influencer', 
                        
                                'Leads a meet-up group for security tech and IoT at home', 
                        
                                '1', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Lorraine Ljuba', 
                                [Location] = 'Chicago', 
                                [Email] = 'lorraine@email.com', 
                                [Address] = '229 Agave Tree Lane Chicago, IL 29283', 
                                [Type] = 'Influencer', 
                                [Notes] = 'Leads a meet-up group for security tech and IoT at home', 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'rec4K71y2HCAU0YYW';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rec7nOhkSFiGcRPSI')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rec7nOhkSFiGcRPSI', 
                        
                                'Marcellus Wong', 
                        
                                'London', 
                        
                                'marcellus@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:19Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Marcellus Wong', 
                                [Location] = 'London', 
                                [Email] = 'marcellus@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:19Z'
                        WHERE VIPId = 'rec7nOhkSFiGcRPSI';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recAdlR7C4nqRKbvZ')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recAdlR7C4nqRKbvZ', 
                        
                                'Emily Rintaro', 
                        
                                'NYC', 
                        
                                'emily@email.com', 
                        
                                '925 7th Avenue, Apt #205 New York City, NY 38210', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Emily Rintaro', 
                                [Location] = 'NYC', 
                                [Email] = 'emily@email.com', 
                                [Address] = '925 7th Avenue, Apt #205 New York City, NY 38210', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'recAdlR7C4nqRKbvZ';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recJtOVAGdrGLmJNZ')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recJtOVAGdrGLmJNZ', 
                        
                                'Clara Rotelli', 
                        
                                'Bay Area', 
                        
                                'clara@email.com', 
                        
                                '838 California Drive Redwood City, 82828', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Clara Rotelli', 
                                [Location] = 'Bay Area', 
                                [Email] = 'clara@email.com', 
                                [Address] = '838 California Drive Redwood City, 82828', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'recJtOVAGdrGLmJNZ';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recMgZq6PqM0NbFwp')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recMgZq6PqM0NbFwp', 
                        
                                'Edith Lindon', 
                        
                                'Bay Area', 
                        
                                'edith@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Edith Lindon', 
                                [Location] = 'Bay Area', 
                                [Email] = 'edith@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recMgZq6PqM0NbFwp';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recN4LyxDveiW85XF')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recN4LyxDveiW85XF', 
                        
                                'Mattheus Anderson', 
                        
                                'Chicago', 
                        
                                'matthaeus@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Mattheus Anderson', 
                                [Location] = 'Chicago', 
                                [Email] = 'matthaeus@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recN4LyxDveiW85XF';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recYjpC4fnLqXdveG')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recYjpC4fnLqXdveG', 
                        
                                'Belinda Chen', 
                        
                                'Bay Area', 
                        
                                'belinda@email.com', 
                        
                                '7391 3rd Ave San Francisco, CA 94301', 
                        
                                'VIP Customer', 
                        
                                NULL, 
                        
                                '2', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Belinda Chen', 
                                [Location] = 'Bay Area', 
                                [Email] = 'belinda@email.com', 
                                [Address] = '7391 3rd Ave San Francisco, CA 94301', 
                                [Type] = 'VIP Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'recYjpC4fnLqXdveG';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recas9Q8MsQ2hJyMj')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recas9Q8MsQ2hJyMj', 
                        
                                'Kendrick Anar', 
                        
                                'NYC', 
                        
                                'kendrick@email.com', 
                        
                                '9298 Bellingham Way Brooklyn, NY 29283', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:49Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Kendrick Anar', 
                                [Location] = 'NYC', 
                                [Email] = 'kendrick@email.com', 
                                [Address] = '9298 Bellingham Way Brooklyn, NY 29283', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:49Z'
                        WHERE VIPId = 'recas9Q8MsQ2hJyMj';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'rech4iA1U73j9OnZc')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'rech4iA1U73j9OnZc', 
                        
                                'Marc Jenkins', 
                        
                                'Austin', 
                        
                                'marc@email.com', 
                        
                                '1947 Desert Road Drive Austin, TX 84832', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '0', 
                        
                                '2016-10-30T19:28:15Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Marc Jenkins', 
                                [Location] = 'Austin', 
                                [Email] = 'marc@email.com', 
                                [Address] = '1947 Desert Road Drive Austin, TX 84832', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:15Z'
                        WHERE VIPId = 'rech4iA1U73j9OnZc';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reckW757QFTARED8m')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reckW757QFTARED8m', 
                        
                                'Melissa Gonzalez', 
                        
                                'Chicago', 
                        
                                'melissa@email.com', 
                        
                                '305 Gale Lane Chicago, IL 3828', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Melissa Gonzalez', 
                                [Location] = 'Chicago', 
                                [Email] = 'melissa@email.com', 
                                [Address] = '305 Gale Lane Chicago, IL 3828', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'reckW757QFTARED8m';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reckfN07T4ywoYKCF')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reckfN07T4ywoYKCF', 
                        
                                'Gabriella Lily', 
                        
                                'Austin', 
                        
                                'gabriella@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Prominent blogger who writes about home safety', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Gabriella Lily', 
                                [Location] = 'Austin', 
                                [Email] = 'gabriella@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Prominent blogger who writes about home safety', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'reckfN07T4ywoYKCF';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recpsaBPr5o5iWzY8')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recpsaBPr5o5iWzY8', 
                        
                                'Stephan Oswald', 
                        
                                'Chicago', 
                        
                                'stephan@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Organizer of the home security automation movement', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Stephan Oswald', 
                                [Location] = 'Chicago', 
                                [Email] = 'stephan@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Organizer of the home security automation movement', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recpsaBPr5o5iWzY8';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recse5Cf8zeJ3XSey')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recse5Cf8zeJ3XSey', 
                        
                                'Katrina Peterson', 
                        
                                'Bay Area', 
                        
                                'katrina@email.com', 
                        
                                '730 Escondido Rd San Mateo, CA 94305', 
                        
                                'Customer', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:12Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Katrina Peterson', 
                                [Location] = 'Bay Area', 
                                [Email] = 'katrina@email.com', 
                                [Address] = '730 Escondido Rd San Mateo, CA 94305', 
                                [Type] = 'Customer', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:12Z'
                        WHERE VIPId = 'recse5Cf8zeJ3XSey';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recuK2ol3AualSYUm')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recuK2ol3AualSYUm', 
                        
                                'Claudia Siv', 
                        
                                'Bay Area', 
                        
                                'claudia@email.com', 
                        
                                NULL, 
                        
                                'Influencer', 
                        
                                'Web columnist on tech & security topics', 
                        
                                '0', 
                        
                                '2016-10-30T19:28:17Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Claudia Siv', 
                                [Location] = 'Bay Area', 
                                [Email] = 'claudia@email.com', 
                                [Address] = NULL, 
                                [Type] = 'Influencer', 
                                [Notes] = 'Web columnist on tech & security topics', 
                                [Eventsattended] = '0', 
                                [createdTime] = '2016-10-30T19:28:17Z'
                        WHERE VIPId = 'recuK2ol3AualSYUm';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'recyhb4ZSsL7CwpK0')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'recyhb4ZSsL7CwpK0', 
                        
                                'Reuben Ettore', 
                        
                                'NYC', 
                        
                                'reuben@email.com', 
                        
                                NULL, 
                        
                                'PorchCam Partner', 
                        
                                NULL, 
                        
                                '1', 
                        
                                '2016-10-30T19:28:18Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Reuben Ettore', 
                                [Location] = 'NYC', 
                                [Email] = 'reuben@email.com', 
                                [Address] = NULL, 
                                [Type] = 'PorchCam Partner', 
                                [Notes] = NULL, 
                                [Eventsattended] = '1', 
                                [createdTime] = '2016-10-30T19:28:18Z'
                        WHERE VIPId = 'recyhb4ZSsL7CwpK0';
                    END
                

                    IF NOT EXISTS (SELECT VIPId FROM VIP WHERE VIPId = 'reczkQra1mDJRttIu')
                    BEGIN
                        INSERT INTO [VIP] ([VIPId] , [Name] , [Location] , [Email] , [Address] , [Type] , [Notes] , [Eventsattended] , [createdTime] ) VALUES (
                        
                                'reczkQra1mDJRttIu', 
                        
                                'Deepa Vartak', 
                        
                                'NYC', 
                        
                                'deepa@email.com', 
                        
                                '2820 Lexington Ave, Apt #5 New York City, NY 38821', 
                        
                                'VIP Customer', 
                        
                                'Customer who has purchased the most PorchCams (25!)', 
                        
                                '2', 
                        
                                '2016-10-30T19:28:16Z');
                    END ELSE BEGIN
                        UPDATE  [VIP] 
                            SET 
                                [Name] = 'Deepa Vartak', 
                                [Location] = 'NYC', 
                                [Email] = 'deepa@email.com', 
                                [Address] = '2820 Lexington Ave, Apt #5 New York City, NY 38821', 
                                [Type] = 'VIP Customer', 
                                [Notes] = 'Customer who has purchased the most PorchCams (25!)', 
                                [Eventsattended] = '2', 
                                [createdTime] = '2016-10-30T19:28:16Z'
                        WHERE VIPId = 'reczkQra1mDJRttIu';
                    END
                
            
 
        
        
        
        
        
            -- ADD ALL DATA FOR: Venue
            --  STATIC: 
            --  Rows: 6
            --  only-static-data: false
            
        
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'rec4xyPsLd4sK8H82')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'rec4xyPsLd4sK8H82', 
                        
                                'Jordan''s Steakhouse', 
                        
                                '105 Margrave Pl San Francisco, CA 94133', 
                        
                                'Great restaurant for a small group dinner as we can book the private room', 
                        
                                'ðŸ”µ eyJpIjoiMTA1IE1hcmdyYXZlIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzIiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiIxMDUgTWFyZ3JhdmUgUGwsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzLCBVU0EiLCJsYXQiOjM3Ljc5OTQ3MDUsImxuZyI6LTEyMi40MDY5Nzc2fSwiZSI6MTUyNjA3NzUxNjU4MH0=', 
                        
                                '2016-10-30T19:17:49Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Jordan''s Steakhouse', 
                                [Address] = '105 Margrave Pl San Francisco, CA 94133', 
                                [Notes] = 'Great restaurant for a small group dinner as we can book the private room', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMTA1IE1hcmdyYXZlIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzIiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiIxMDUgTWFyZ3JhdmUgUGwsIFNhbiBGcmFuY2lzY28sIENBIDk0MTMzLCBVU0EiLCJsYXQiOjM3Ljc5OTQ3MDUsImxuZyI6LTEyMi40MDY5Nzc2fSwiZSI6MTUyNjA3NzUxNjU4MH0=', 
                                [createdTime] = '2016-10-30T19:17:49Z'
                        WHERE VenueId = 'rec4xyPsLd4sK8H82';
                    END
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recBz4VkZchIvJ3MP')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recBz4VkZchIvJ3MP', 
                        
                                'San Francisco Conference Center', 
                        
                                '1000 Beale St, San Francisco, CA 94105', 
                        
                                'Extremely large conference center (generally hosts events for up to 10,000+ people)', 
                        
                                'ðŸ”µ eyJpIjoiMTAwMCBCZWFsZSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDUiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjEwMDAgQmVhbGUgU3QsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA1LCBVU0EiLCJsYXQiOjM3Ljc4NTU4MDEsImxuZyI6LTEyMi4zODg4NjcxOTk5OTk5OX0sImUiOjE1MjYwNzc1MTk2MzV9', 
                        
                                '2016-10-30T19:18:42Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'San Francisco Conference Center', 
                                [Address] = '1000 Beale St, San Francisco, CA 94105', 
                                [Notes] = 'Extremely large conference center (generally hosts events for up to 10,000+ people)', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMTAwMCBCZWFsZSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDUiLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IjEwMDAgQmVhbGUgU3QsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA1LCBVU0EiLCJsYXQiOjM3Ljc4NTU4MDEsImxuZyI6LTEyMi4zODg4NjcxOTk5OTk5OX0sImUiOjE1MjYwNzc1MTk2MzV9', 
                                [createdTime] = '2016-10-30T19:18:42Z'
                        WHERE VenueId = 'recBz4VkZchIvJ3MP';
                    END
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recPqnTJFtVfythjg')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recPqnTJFtVfythjg', 
                        
                                'Hamachi Sushi', 
                        
                                '770 Taber Pl San Francisco, CA 94107', 
                        
                                'Jasmine suggested this restaurant and said it was great ambiance for this type of event (though it''s potentially a little noisy)', 
                        
                                'ðŸ”µ eyJpIjoiNzcwIFRhYmVyIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA3IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiJUYWJlciBQbCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxOTQ5NSwibG5nIjotMTIyLjM5NDQzNjcwMDAwMDAzfSwiZSI6MTUyNjA3NzUyMDMwOH0=', 
                        
                                '2016-10-30T19:19:49Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Hamachi Sushi', 
                                [Address] = '770 Taber Pl San Francisco, CA 94107', 
                                [Notes] = 'Jasmine suggested this restaurant and said it was great ambiance for this type of event (though it''s potentially a little noisy)', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiNzcwIFRhYmVyIFBsIFNhbiBGcmFuY2lzY28sIENBIDk0MTA3IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiJUYWJlciBQbCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxOTQ5NSwibG5nIjotMTIyLjM5NDQzNjcwMDAwMDAzfSwiZSI6MTUyNjA3NzUyMDMwOH0=', 
                                [createdTime] = '2016-10-30T19:19:49Z'
                        WHERE VenueId = 'recPqnTJFtVfythjg';
                    END
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recXhSz6tcAs2pDAf')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recXhSz6tcAs2pDAf', 
                        
                                'Rose Pavilion', 
                        
                                '314 Tandang Sora St, San Francisco, CA 94107', 
                        
                                'Large multi-purpose event space', 
                        
                                'ðŸ”µ eyJpIjoiMzE0IFRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDciLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IlRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxNjg0NiwibG5nIjotMTIyLjQwMDA0Nzl9LCJlIjoxNTI2MDc3NTE3NDA0fQ==', 
                        
                                '2016-10-30T19:18:07Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Rose Pavilion', 
                                [Address] = '314 Tandang Sora St, San Francisco, CA 94107', 
                                [Notes] = 'Large multi-purpose event space', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiMzE0IFRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDciLCJvIjp7InN0YXR1cyI6Ik9LIiwiZm9ybWF0dGVkQWRkcmVzcyI6IlRhbmRhbmcgU29yYSBTdCwgU2FuIEZyYW5jaXNjbywgQ0EgOTQxMDcsIFVTQSIsImxhdCI6MzcuNzgxNjg0NiwibG5nIjotMTIyLjQwMDA0Nzl9LCJlIjoxNTI2MDc3NTE3NDA0fQ==', 
                                [createdTime] = '2016-10-30T19:18:07Z'
                        WHERE VenueId = 'recXhSz6tcAs2pDAf';
                    END
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recn9vuZXZOzxszN5')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recn9vuZXZOzxszN5', 
                        
                                'Oikos Mediterranean', 
                        
                                '90 Maiden Ln San Francisco, CA 94108', 
                        
                                'Selected this venue to test out having a meetup at a restaurant. Currently booked the outdoor patio space which seems like it''ll be a good place for mingling', 
                        
                                'ðŸ”µ eyJpIjoiOTAgTWFpZGVuIExuIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiI5MCBNYWlkZW4gTG4sIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4LCBVU0EiLCJsYXQiOjM3Ljc4ODM2NTYsImxuZyI6LTEyMi40MDUwNDQ1MDAwMDAwM30sImUiOjE1MjYwNzc1MTg5MDN9', 
                        
                                '2016-10-30T19:20:58Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'Oikos Mediterranean', 
                                [Address] = '90 Maiden Ln San Francisco, CA 94108', 
                                [Notes] = 'Selected this venue to test out having a meetup at a restaurant. Currently booked the outdoor patio space which seems like it''ll be a good place for mingling', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiOTAgTWFpZGVuIExuIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4IiwibyI6eyJzdGF0dXMiOiJPSyIsImZvcm1hdHRlZEFkZHJlc3MiOiI5MCBNYWlkZW4gTG4sIFNhbiBGcmFuY2lzY28sIENBIDk0MTA4LCBVU0EiLCJsYXQiOjM3Ljc4ODM2NTYsImxuZyI6LTEyMi40MDUwNDQ1MDAwMDAwM30sImUiOjE1MjYwNzc1MTg5MDN9', 
                                [createdTime] = '2016-10-30T19:20:58Z'
                        WHERE VenueId = 'recn9vuZXZOzxszN5';
                    END
                

                    IF NOT EXISTS (SELECT VenueId FROM Venue WHERE VenueId = 'recxUyRUMfjnSWJvy')
                    BEGIN
                        INSERT INTO [Venue] ([VenueId] , [Name] , [Address] , [Notes] , [MapCache] , [createdTime] ) VALUES (
                        
                                'recxUyRUMfjnSWJvy', 
                        
                                'PorchCam SF Office', 
                        
                                '49 Powell St, San Francisco, CA 94102', 
                        
                                'Office can host events from up to 75 people, though we''ll need to get explicit approval to host an event of 50 or more.', 
                        
                                'ðŸ”µ eyJpIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiIsIm8iOnsic3RhdHVzIjoiT0siLCJmb3JtYXR0ZWRBZGRyZXNzIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiwgVVNBIiwibGF0IjozNy43ODUyMTAxLCJsbmciOi0xMjIuNDA4MTAyNjk5OTk5OTd9LCJlIjoxNTI2MDc3NTE4MTcyfQ==', 
                        
                                '2016-10-30T19:19:01Z');
                    END ELSE BEGIN
                        UPDATE  [Venue] 
                            SET 
                                [Name] = 'PorchCam SF Office', 
                                [Address] = '49 Powell St, San Francisco, CA 94102', 
                                [Notes] = 'Office can host events from up to 75 people, though we''ll need to get explicit approval to host an event of 50 or more.', 
                                [MapCache] = 'ðŸ”µ eyJpIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiIsIm8iOnsic3RhdHVzIjoiT0siLCJmb3JtYXR0ZWRBZGRyZXNzIjoiNDkgUG93ZWxsIFN0LCBTYW4gRnJhbmNpc2NvLCBDQSA5NDEwMiwgVVNBIiwibGF0IjozNy43ODUyMTAxLCJsbmciOi0xMjIuNDA4MTAyNjk5OTk5OTd9LCJlIjoxNTI2MDc3NTE4MTcyfQ==', 
                                [createdTime] = '2016-10-30T19:19:01Z'
                        WHERE VenueId = 'recxUyRUMfjnSWJvy';
                    END
                
            
 
                