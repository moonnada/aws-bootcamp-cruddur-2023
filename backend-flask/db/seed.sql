-- this file was manually created
INSERT INTO
    public.users (
        display_name,
        handle,
        email,
        cognito_user_id,
        created_at
    )
VALUES (
        'Ray Kim',
        'RayKim',
        'test@test.com',
        'randomid',
        '07/27/1993'
    )

INSERT INTO
    public.activities (
        user_uuid,
        message,
        expires_at
    )
VALUES (
        (
            SELECT uuid
            from public.users
            WHERE
                users.handle = 'andrewbrown'
            LIMIT 1
        ),
        'This was imported as seed data!',
        current_timestamp + interval '10 day'
    )