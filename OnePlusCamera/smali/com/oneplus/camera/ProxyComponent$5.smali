.class Lcom/oneplus/camera/ProxyComponent$5;
.super Ljava/lang/Object;
.source "ProxyComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ProxyComponent;->onTargetFound(Lcom/oneplus/base/component/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ProxyComponent;

.field final synthetic val$eventKeys:Ljava/util/ArrayList;

.field final synthetic val$propertyKeys:Ljava/util/ArrayList;

.field final synthetic val$target:Lcom/oneplus/base/component/Component;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ProxyComponent;Ljava/util/ArrayList;Lcom/oneplus/base/component/Component;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    iput-object p2, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$eventKeys:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$target:Lcom/oneplus/base/component/Component;

    iput-object p4, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$propertyKeys:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$eventKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v3, Lcom/oneplus/camera/ProxyComponent$5$1;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ProxyComponent$5$1;-><init>(Lcom/oneplus/camera/ProxyComponent$5;)V

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$eventKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_0
    if-ltz v4, :cond_0

    iget-object v8, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$target:Lcom/oneplus/base/component/Component;

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$eventKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/EventKey;

    invoke-interface {v8, v7, v3}, Lcom/oneplus/base/component/Component;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$propertyKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v1, Lcom/oneplus/camera/ProxyComponent$5$2;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ProxyComponent$5$2;-><init>(Lcom/oneplus/camera/ProxyComponent$5;)V

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$propertyKeys:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_1

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$propertyKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/PropertyKey;

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$target:Lcom/oneplus/base/component/Component;

    invoke-interface {v7, v5}, Lcom/oneplus/base/component/Component;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->val$target:Lcom/oneplus/base/component/Component;

    invoke-interface {v7, v5, v1}, Lcom/oneplus/base/component/Component;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x1

    aput-object v5, v8, v9

    iget-object v9, v5, Lcom/oneplus/base/PropertyKey;->defaultValue:Ljava/lang/Object;

    invoke-static {v9, v6}, Lcom/oneplus/base/PropertyChangeEventArgs;->obtain(Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/base/PropertyChangeEventArgs;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/16 v9, -0x2711

    invoke-static {v7, v9, v12, v12, v8}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v7}, Lcom/oneplus/camera/ProxyComponent;->-get0(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v7}, Lcom/oneplus/camera/ProxyComponent;->-get0(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v7}, Lcom/oneplus/camera/ProxyComponent;->-get0(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    new-array v0, v7, [Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v7}, Lcom/oneplus/camera/ProxyComponent;->-get0(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    invoke-static {v7}, Lcom/oneplus/camera/ProxyComponent;->-get0(Lcom/oneplus/camera/ProxyComponent;)Ljava/util/LinkedList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v8

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    array-length v2, v0

    :goto_2
    if-ge v4, v2, :cond_3

    iget-object v7, p0, Lcom/oneplus/camera/ProxyComponent$5;->this$0:Lcom/oneplus/camera/ProxyComponent;

    aget-object v8, v0, v4

    invoke-static {v7, v8}, Lcom/oneplus/camera/ProxyComponent;->-wrap0(Lcom/oneplus/camera/ProxyComponent;Lcom/oneplus/camera/ProxyComponent$AsyncMethodCallHandle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3
    return-void
.end method