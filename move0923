void Update()
{
    Vector2 direction = Vector2.zero;

    // 방향키 입력 체크
    if (Input.GetKey(KeyCode.LeftArrow)) direction.x = -1;
    else if (Input.GetKey(KeyCode.RightArrow)) direction.x = 1;

    if (Input.GetKey(KeyCode.UpArrow)) direction.y = 1;
    else if (Input.GetKey(KeyCode.DownArrow)) direction.y = -1;

    // 이동 처리
    if (direction != Vector2.zero)
    {
        direction = direction.normalized;
        movementComponent.MoveToDirection(direction, Time.deltaTime);
    }
    else
    {
        movementComponent.Stop();
    }

    // Alt 키 입력 시 점프 처리
    if (Input.GetKeyDown(KeyCode.LeftAlt) || Input.GetKeyDown(KeyCode.RightAlt))
    {
        movementComponent.Jump();
    }
}
