.class public Lcom/oneplus/util/SizeComparator;
.super Ljava/lang/Object;
.source "SizeComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/oneplus/util/SizeComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/util/SizeComparator;

    invoke-direct {v0}, Lcom/oneplus/util/SizeComparator;-><init>()V

    sput-object v0, Lcom/oneplus/util/SizeComparator;->DEFAULT:Lcom/oneplus/util/SizeComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int v0, v2, v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int v1, v2, v3

    :goto_1
    sub-int v2, v0, v1

    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/util/SizeComparator;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result v0

    return v0
.end method
