.class public Lcom/amap/api/mapcore2d/ed;
.super Lcom/amap/api/mapcore2d/dy;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/ed$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ed;


# instance fields
.field private b:Lcom/amap/api/mapcore2d/el;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ZI)V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/dy;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/amap/api/mapcore2d/ed$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ed$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ed;->c:Landroid/os/Handler;

    :goto_1
    return-void

    :cond_0
    invoke-static {p2}, Lcom/amap/api/mapcore2d/el;->a(I)Lcom/amap/api/mapcore2d/el;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ed;->b:Lcom/amap/api/mapcore2d/el;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetManger"

    const-string/jumbo v2, "NetManger1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/db;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore2d/ed$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore2d/ed$a;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore2d/ed$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ed;->c:Landroid/os/Handler;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Z)Lcom/amap/api/mapcore2d/ed;
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/amap/api/mapcore2d/ed;->a(ZI)Lcom/amap/api/mapcore2d/ed;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized a(ZI)Lcom/amap/api/mapcore2d/ed;
    .locals 3

    const-class v1, Lcom/amap/api/mapcore2d/ed;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore2d/ed;->a:Lcom/amap/api/mapcore2d/ed;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-nez p0, :cond_2

    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/amap/api/mapcore2d/ed;->a:Lcom/amap/api/mapcore2d/ed;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lcom/amap/api/mapcore2d/ed;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/mapcore2d/ed;-><init>(ZI)V

    sput-object v0, Lcom/amap/api/mapcore2d/ed;->a:Lcom/amap/api/mapcore2d/ed;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_4
    sget-object v0, Lcom/amap/api/mapcore2d/ed;->a:Lcom/amap/api/mapcore2d/ed;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ed;->b:Lcom/amap/api/mapcore2d/el;

    if-nez v0, :cond_0

    sget-object v0, Lcom/amap/api/mapcore2d/ed;->a:Lcom/amap/api/mapcore2d/ed;

    invoke-static {p1}, Lcom/amap/api/mapcore2d/el;->a(I)Lcom/amap/api/mapcore2d/el;

    move-result-object v2

    iput-object v2, v0, Lcom/amap/api/mapcore2d/ed;->b:Lcom/amap/api/mapcore2d/el;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore2d/ck;Lcom/amap/api/mapcore2d/ef;)V
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore2d/eh;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/eh;-><init>()V

    iput-object p1, v0, Lcom/amap/api/mapcore2d/eh;->a:Lcom/amap/api/mapcore2d/ck;

    iput-object p2, v0, Lcom/amap/api/mapcore2d/eh;->b:Lcom/amap/api/mapcore2d/ef;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ed;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ed;Lcom/amap/api/mapcore2d/ck;Lcom/amap/api/mapcore2d/ef;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/ck;Lcom/amap/api/mapcore2d/ef;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ed;Lcom/amap/api/mapcore2d/eg;Lcom/amap/api/mapcore2d/ef;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/eg;Lcom/amap/api/mapcore2d/ef;)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/eg;Lcom/amap/api/mapcore2d/ef;)V
    .locals 2

    iget-object v0, p1, Lcom/amap/api/mapcore2d/eg;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/amap/api/mapcore2d/eg;->a:[B

    invoke-interface {p2, v0, v1}, Lcom/amap/api/mapcore2d/ef;->a(Ljava/util/Map;[B)V

    new-instance v0, Lcom/amap/api/mapcore2d/eh;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/eh;-><init>()V

    iput-object p2, v0, Lcom/amap/api/mapcore2d/eh;->b:Lcom/amap/api/mapcore2d/ef;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ed;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ee;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ed;->a(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lcom/amap/api/mapcore2d/db;->a()Lcom/amap/api/mapcore2d/db;

    move-result-object v1

    const-string/jumbo v2, "NetManager"

    const-string/jumbo v3, "makeSyncPostRequest"

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/db;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/amap/api/mapcore2d/eg;->a:[B

    return-object v0
.end method

.method public b(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ed;->b(Lcom/amap/api/mapcore2d/ee;)V

    iget-object v1, p1, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/eb;

    iget v2, p1, Lcom/amap/api/mapcore2d/ee;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/ee;->d:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore2d/eb;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->f()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/mapcore2d/eg;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/amap/api/mapcore2d/ee;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ed;->b(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/ck; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/amap/api/mapcore2d/eg;->a:[B

    return-object v0
.end method
