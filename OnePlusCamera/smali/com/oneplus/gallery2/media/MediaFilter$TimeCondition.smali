.class public final Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;
.super Ljava/lang/Object;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeCondition"
.end annotation


# instance fields
.field public final day:I

.field public final end:J

.field public final hasDate:Z

.field public final hasMonth:Z

.field public final hasTime:Z

.field public final hasYear:Z

.field public final hours:I

.field public final isValid:Z

.field public final minutes:I

.field public final month:I

.field public final start:J

.field public final year:I


# direct methods
.method public constructor <init>(Ljava/util/Calendar;I)V
    .locals 7

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;-><init>(Ljava/util/Calendar;IIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;II)V
    .locals 7

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;-><init>(Ljava/util/Calendar;IIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;III)V
    .locals 7

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;-><init>(Ljava/util/Calendar;IIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;IIIII)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->year:I

    iput p3, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->month:I

    iput p4, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->day:I

    iput p5, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hours:I

    iput p6, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->minutes:I

    if-gtz p2, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasYear:Z

    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasYear:Z

    if-nez v0, :cond_5

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasMonth:Z

    iget-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasMonth:Z

    if-nez v0, :cond_6

    :cond_1
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasDate:Z

    if-gez p5, :cond_7

    :cond_2
    :goto_3
    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->hasTime:Z

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->start:J

    iput-wide v4, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->end:J

    iput-boolean v1, p0, Lcom/oneplus/gallery2/media/MediaFilter$TimeCondition;->isValid:Z

    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    if-lez p3, :cond_0

    const/16 v0, 0xc

    if-gt p3, v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_6
    if-lez p4, :cond_1

    const/16 v0, 0x1f

    if-gt p4, v0, :cond_1

    move v0, v2

    goto :goto_2

    :cond_7
    const/16 v0, 0x17

    if-gt p5, v0, :cond_2

    if-ltz p6, :cond_2

    const/16 v0, 0x3b

    if-le p6, v0, :cond_3

    goto :goto_3
.end method
