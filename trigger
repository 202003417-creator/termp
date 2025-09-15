TriggerComponent {
  Property:
    [Sync]
    Vector2 BoxOffset = Vector2(0.000, 0.000)   -- 트리거 박스 위치
    [Sync]
    Vector2 BoxSize = Vector2(0.000, 0.000)  -- 트리거 박스 크
    [Sync]
    float CircleRadius = 0
    string ColliderName = "TriggerBox"
    [Sync]
    Vector2 ColliderOffset = Vector2(0.000, 0.000)
    [Sync]
    ColliderType ColliderType = ColliderType.Box
    [Sync]
    CollisionGroup CollisionGroup = CollisionGroups.TriggerBox
    boolean IsLegacy = false   -- 호환성 확인
    [Sync]
    boolean IsPassive = false   -- 수동 모드 확인
    [Sync]
    SyncList<Vector2> PolygonPoints
    [Sync]
    boolean Enable = true
    boolean EnableInHierarchy
    Entity Entity

  Method:
    overrideable
    void OnEnterTriggerBody(TriggerEnterEvent enterEvent)  
    overrideable
    void OnLeaveTriggerBody(TriggerLeaveEvent leaveEvent)
    overrideable
    void OnStayTriggerBody(TriggerStayEvent stayEvent)
    boolean IsClient()  -- 클라이언트 환경에서 실행인지 확인
}

Event:
  TriggerEnterEvent(Entity triggerBodyEntity = nil)  -- 다른 오브젝트 진입시 발생
  TriggerLeaveEvent(Entity triggerBodyEntity = nil)  -- 다른 오브젝트가 나갈떄 발생
  TriggerStayEvent(Entity triggerBodyEntity = nil)  -- 겹쳐있을때 프레임 단위로 발
