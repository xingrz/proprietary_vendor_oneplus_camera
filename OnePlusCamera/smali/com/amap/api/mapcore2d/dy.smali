.class public Lcom/amap/api/mapcore2d/dy;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/dy$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/dy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/dy;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore2d/dy;->a:Lcom/amap/api/mapcore2d/dy;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/amap/api/mapcore2d/dy;->a:Lcom/amap/api/mapcore2d/dy;

    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/dy;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/dy;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/dy;->a:Lcom/amap/api/mapcore2d/dy;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/dy;->b(Lcom/amap/api/mapcore2d/ee;)V

    iget-object v1, p1, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/amap/api/mapcore2d/ee;->e:Ljava/net/Proxy;

    :cond_0
    new-instance v1, Lcom/amap/api/mapcore2d/eb;

    iget v2, p1, Lcom/amap/api/mapcore2d/ee;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/ee;->d:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore2d/eb;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->k()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/eb;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/mapcore2d/eg;
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

.method public a(Lcom/amap/api/mapcore2d/ee;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/dy;->a(Lcom/amap/api/mapcore2d/ee;Z)Lcom/amap/api/mapcore2d/eg;
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

    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/cy;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v0, Lcom/amap/api/mapcore2d/eg;->a:[B

    return-object v0
.end method

.method protected b(Lcom/amap/api/mapcore2d/ee;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/ck;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/ck;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/ck;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/ee;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
