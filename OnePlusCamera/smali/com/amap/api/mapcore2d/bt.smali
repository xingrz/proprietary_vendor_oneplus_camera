.class Lcom/amap/api/mapcore2d/bt;
.super Lcom/amap/api/mapcore2d/bh;
.source "TileServerHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore2d/bh",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/amap/api/mapcore2d/bp;",
        ">;>;"
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private f:Lcom/amap/api/mapcore2d/am;

.field private g:Lcom/amap/api/maps2d/model/TileProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/model/TileProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;",
            "Lcom/amap/api/maps2d/model/TileProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/bh;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cs;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->a(Ljava/net/Proxy;)V

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->a(I)V

    const v0, 0xc350

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/bt;->b(I)V

    return-void
.end method

.method private a(Lcom/amap/api/mapcore2d/bp;I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v1, Lcom/amap/api/mapcore2d/am;->p:Lcom/amap/api/mapcore2d/bk;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/bk;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_4

    :goto_1
    monitor-exit v3

    return-void

    :cond_4
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore2d/bk;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/bp;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_6
    iput p2, v0, Lcom/amap/api/mapcore2d/bp;->h:I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/graphics/Bitmap;)[B
    .locals 4

    const-string/jumbo v1, "Bitmap2Bytes"

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TileServerHandler"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a([BLcom/amap/api/mapcore2d/bp;)I
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    return v6

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-nez v0, :cond_3

    :cond_2
    return v6

    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    invoke-virtual {p2}, Lcom/amap/api/mapcore2d/bp;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/az;->a([B[BZLjava/util/List;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-direct {p0, p2, v0}, Lcom/amap/api/mapcore2d/bt;->a(Lcom/amap/api/mapcore2d/bp;I)V

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-boolean v1, v1, Lcom/amap/api/mapcore2d/am;->f:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    :cond_4
    :goto_0
    return v0

    :cond_5
    return v6

    :cond_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/am;->n:Lcom/amap/api/mapcore2d/az;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/az;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amap/api/mapcore2d/bt;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/am;->o:Lcom/amap/api/mapcore2d/s;

    invoke-virtual {v2, v1, p2}, Lcom/amap/api/mapcore2d/s;->a([BLcom/amap/api/mapcore2d/bp;)Z

    goto :goto_0
.end method

.method protected synthetic a([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/bt;->b([B)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/mapcore2d/am;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    return-void
.end method

.method protected b([B)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v7, v1

    move-object v1, v2

    move v2, v7

    :goto_0
    if-lt v2, v3, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/bt;->a([BLcom/amap/api/mapcore2d/bp;)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_5

    :goto_2
    new-instance v4, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v4, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/am;->h:Z

    if-nez v0, :cond_6

    :cond_4
    :goto_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_6
    iget v0, v4, Lcom/amap/api/mapcore2d/bp;->d:I

    const/16 v5, 0x9

    if-le v0, v5, :cond_4

    iget v0, v4, Lcom/amap/api/mapcore2d/bp;->b:I

    iget v5, v4, Lcom/amap/api/mapcore2d/bp;->c:I

    iget v6, v4, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-static {v0, v5, v6}, Lcom/amap/api/mapcore2d/ci;->a(III)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/amap/api/mapcore2d/bp;->i:Z

    goto :goto_3
.end method

.method protected b()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/amap/api/mapcore2d/bh;->b()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/bt;->g:Lcom/amap/api/maps2d/model/TileProvider;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v2, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v3, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-interface {v1, v2, v3, v0}, Lcom/amap/api/maps2d/model/TileProvider;->getTile(III)Lcom/amap/api/maps2d/model/Tile;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/maps2d/model/Tile;->data:[B

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/bt;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/bp;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    new-instance v3, Lcom/amap/api/mapcore2d/bp;

    invoke-direct {v3, v0}, Lcom/amap/api/mapcore2d/bp;-><init>(Lcom/amap/api/mapcore2d/bp;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public e()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP_SDK_Android_2DMap_2.9.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "platinfo"

    const-string/jumbo v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "2.9.2"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "2dmap"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "X-INFO"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/amap/api/mapcore2d/bt;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore2d/cl;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "logversion"

    const-string/jumbo v2, "2.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget v0, Lcom/amap/api/mapcore2d/p;->i:I

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v1, v0

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->f:Lcom/amap/api/mapcore2d/am;

    iget-object v2, v0, Lcom/amap/api/mapcore2d/am;->j:Lcom/amap/api/mapcore2d/by;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v3, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-virtual {v2, v1, v3, v0}, Lcom/amap/api/mapcore2d/by;->a(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/bp;->b()V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget-boolean v0, v0, Lcom/amap/api/mapcore2d/bp;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore2d/aw;->a()Lcom/amap/api/mapcore2d/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/aw;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/bt;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/bp;

    iget v0, v0, Lcom/amap/api/mapcore2d/bp;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    add-int/2addr v0, v1

    move v1, v0

    goto/16 :goto_0
.end method
