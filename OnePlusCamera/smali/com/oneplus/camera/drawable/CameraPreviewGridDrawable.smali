.class public final Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CameraPreviewGridDrawable.java"


# static fields
.field private static final synthetic -com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I = null

.field private static final GOLDEN_RATIO:F = 1.618f


# instance fields
.field private m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

.field private final m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_HorizontalStrokeWidth:F

.field private final m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

.field private final m_VerticalStrokeWidth:F


# direct methods
.method private static synthetic -getcom-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->values()[Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->GOLDEN_RATIO:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_3x3:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->UNIFORM_4x4:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->-com-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v1, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->NONE:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    iput-object v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    const v1, 0x7f080036

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/oneplus/camera/drawable/ShadowDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v3, 0x7f0c0024

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    iput-object v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    new-instance v1, Lcom/oneplus/camera/drawable/ShadowDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v3, 0x7f0c0025

    invoke-direct {v1, p1, v2, v3}, Lcom/oneplus/camera/drawable/ShadowDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V

    iput-object v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    iput v1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const v12, 0x3fcf1aa0    # 1.618f

    const/high16 v11, 0x40400000    # 3.0f

    const v10, 0x40278d50    # 2.618f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->-getcom-oneplus-camera-ui-CameraPreviewGrid$GridTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v11

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :pswitch_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    :pswitch_2
    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v2, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    float-to-int v5, v2

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalStrokeWidth:F

    add-float/2addr v7, v2

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    div-float/2addr v4, v10

    add-float/2addr v3, v4

    iget v4, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    div-float/2addr v4, v8

    sub-float v1, v3, v4

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalStrokeWidth:F

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGridType()Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_HorizontalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_VerticalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setGridType(Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->m_GridType:Lcom/oneplus/camera/ui/CameraPreviewGrid$GridType;

    invoke-virtual {p0}, Lcom/oneplus/camera/drawable/CameraPreviewGridDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
