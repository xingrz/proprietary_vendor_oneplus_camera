.class public final Lcom/amap/api/maps2d/model/VisibleRegion;
.super Ljava/lang/Object;
.source "VisibleRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/l;


# instance fields
.field private final a:I

.field public final farLeft:Lcom/amap/api/maps2d/model/LatLng;

.field public final farRight:Lcom/amap/api/maps2d/model/LatLng;

.field public final latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

.field public final nearLeft:Lcom/amap/api/maps2d/model/LatLng;

.field public final nearRight:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/model/l;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/l;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/VisibleRegion;->CREATOR:Lcom/amap/api/maps2d/model/l;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->a:I

    iput-object p2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    iput-object p3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    iput-object p4, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    iput-object p5, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    iput-object p6, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/maps2d/model/VisibleRegion;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLngBounds;)V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_2

    instance-of v2, p1, Lcom/amap/api/maps2d/model/VisibleRegion;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/amap/api/maps2d/model/VisibleRegion;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "nearLeft"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "nearRight"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->nearRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "farLeft"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farLeft:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "farRight"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->farRight:Lcom/amap/api/maps2d/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "latLngBounds"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/VisibleRegion;->latLngBounds:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/cj;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore2d/cj;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/model/l;->a(Lcom/amap/api/maps2d/model/VisibleRegion;Landroid/os/Parcel;I)V

    return-void
.end method
