.class public final Lcom/amap/api/maps2d/model/PolylineOptions;
.super Ljava/lang/Object;
.source "PolylineOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/i;


# instance fields
.field a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:F

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/i;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/i;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/PolylineOptions;->CREATOR:Lcom/amap/api/maps2d/model/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps2d/model/PolylineOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/LatLng;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public color(I)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public geodesic(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    return-object p0
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->d:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps2d/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    return v0
.end method

.method public isDottedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->g:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    return v0
.end method

.method public setDottedLine(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->h:Z

    return-object p0
.end method

.method public visible(Z)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->f:Z

    return-object p0
.end method

.method public width(F)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->c:F

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->getZIndex()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isGeodesic()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PolylineOptions;->isDottedLine()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public zIndex(F)Lcom/amap/api/maps2d/model/PolylineOptions;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/model/PolylineOptions;->e:F

    return-object p0
.end method
