.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->processYUVImage(Lcom/oneplus/camera/CaptureHandle;I[BIILcom/oneplus/base/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

.field final synthetic val$callback:Lcom/oneplus/base/ResultCallback;

.field final synthetic val$handle:Lcom/oneplus/camera/CaptureHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;Lcom/oneplus/base/ResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    iput-object p3, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$callback:Lcom/oneplus/base/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapAvailable(Lcom/oneplus/camera/media/YuvToBitmapWorker;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->acquireLastBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v14

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCaptureRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/base/Rotation;->getDeviceOrientation()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera;->PROP_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v2, v3}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/Camera$LensFacing;->FRONT:Lcom/oneplus/camera/Camera$LensFacing;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v15

    int-to-float v0, v2

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$handle:Lcom/oneplus/camera/CaptureHandle;

    invoke-virtual {v2}, Lcom/oneplus/camera/CaptureHandle;->isMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$callback:Lcom/oneplus/base/ResultCallback;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->val$callback:Lcom/oneplus/base/ResultCallback;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lcom/oneplus/base/ResultCallback;->onResult(Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->releaseBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$20;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->captureHandle:Lcom/oneplus/camera/CaptureHandle;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->frameIndex:I

    move-object/from16 v0, v18

    iget-object v10, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->yuvImage:[B

    move-object/from16 v0, v18

    iget v11, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->width:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->height:I

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$YuvToBitmapInfo;->callback:Lcom/oneplus/base/ResultCallback;

    invoke-static/range {v7 .. v13}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/camera/CaptureHandle;I[BIILcom/oneplus/base/ResultCallback;)V

    :cond_2
    return-void

    :cond_3
    sget-object v2, Lcom/oneplus/camera/Camera;->PROP_SENSOR_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v14, v2}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v0, v2

    move/from16 v16, v0

    goto/16 :goto_0
.end method
