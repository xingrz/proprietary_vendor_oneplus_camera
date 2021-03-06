.class public Lcom/oneplus/camera/ui/ReviewScreenImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/ReviewScreen;
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/ui/ReviewScreenImpl$1;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$2;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;,
        Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-media-MediaTypeSwitchesValues:[I = null

.field private static final DURATION_ANIMATION_IN:I = 0x190

.field private static final MAX_THUMBNAIL_IMAGE_SIDE:I = 0x780

.field private static final MSG_ASYNC_PROCESS_REVIEW_IMAGE:I = 0x4e21

.field private static final MSG_ON_MEDIA_SAVED_TIMEOUT:I = 0x2716

.field private static final MSG_ON_REVIEW_IMAGE_CREATED:I = 0x2711

.field private static final MSG_ON_REVIEW_IMAGE_TIMEOUT:I = 0x2715

.field private static final MSG_SET_LAST_MEDIA_INFO:I = 0x2712

.field private static final TIMEOUT_MEDIA_SAVED:I = 0x2710

.field private static final TIMEOUT_PROCESS_REVIEW_IMAGE:I = 0x2710


# instance fields
.field private m_CancelButton:Landroid/widget/ImageButton;

.field private volatile m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

.field private m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_IsPostviewReceived:Z

.field private m_IsSetupUI:Z

.field private m_IsVideoBitmapDecoding:Z

.field private m_KeyEventHandle:Lcom/oneplus/base/Handle;

.field private volatile m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

.field private volatile m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

.field private m_MediaSaveFailed:Z

.field private m_OKButton:Landroid/widget/ImageButton;

.field private m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

.field private m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

.field private m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

.field private m_RetakeButton:Landroid/widget/ImageButton;

.field private m_ReviewControls:Landroid/view/View;

.field private m_ReviewImage:Landroid/graphics/Bitmap;

.field private m_ReviewImageView:Landroid/widget/ImageView;

.field private m_ReviewScreen:Landroid/view/View;

.field private m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

.field private m_ThumbnailImage:Landroid/graphics/Bitmap;

.field private m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

.field private m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;


# direct methods
.method static synthetic -get0(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/CaptureHandle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    return v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    return v0
.end method

.method static synthetic -get4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/media/BitmapPool$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/media/MediaType;->values()[Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-com-oneplus-camera-media-MediaTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CaptureHandle;)Lcom/oneplus/camera/CaptureHandle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    return p1
.end method

.method static synthetic -set2(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    return p1
.end method

.method static synthetic -set3(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/ui/ReviewScreenImpl;)Lcom/oneplus/camera/media/MediaType;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setupUI()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/ui/ReviewScreenImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->hideReviewScreen(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickCancelButton()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickOKButton()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/ui/ReviewScreenImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPostViewReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onPreviewReceived()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onVideoBitmapDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "ReviewScreen"

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V

    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$1;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$2;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_VideoDecodedCallback:Lcom/oneplus/media/BitmapPool$Callback;

    return-void
.end method

.method private deleteLastMedia()V
    .locals 3

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iget-object v0, v2, Lcom/oneplus/camera/MediaInfo;->contentURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iget-object v1, v2, Lcom/oneplus/camera/MediaInfo;->filePath:Ljava/lang/String;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl$3;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private hideReviewScreen(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideReviewScreen() - Hide"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    const/16 v0, 0x2716

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    :goto_0
    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    sget-object v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method private needMediaInfo()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private onClickCancelButton()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickCancelButton() - Processing dialog is showing."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->deleteLastMedia()V

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    check-cast v0, Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickCancelButton() - Last media content Uri or file path is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    :cond_3
    return-void
.end method

.method private onClickOKButton()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Processing dialog is showing."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClickOKButton() - needMediaInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , m_LastMediaInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , m_MediaSaveFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Last media content Uri or file path is null, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClickOKButton() - Fail to decode captured picture"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onClickRetakeButton(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClickRetakeButton() - Processing dialog is showing."

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaSaveFailed:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v1, Lcom/oneplus/camera/MediaInfo;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/camera/CameraActivity;->setMediaResult(ILcom/oneplus/camera/MediaInfo;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;Z)V

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onClickRetakeButton() - Last media content Uri or file path is null, skip"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    const v3, 0x7f0d0068

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/oneplus/camera/ui/ProcessingDialog;->showProcessingDialog(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    :cond_3
    return-void
.end method

.method private onPostViewReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Camera is not running, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Review screen is null, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - Review screen is shown, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - ReviewScreenHandle is valid, show directly."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - No image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostViewReviewImageCreated() - ReviewScreenHandle is invalid"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreen()Lcom/oneplus/base/Handle;

    goto :goto_1
.end method

.method private onPostviewReceived(Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 14

    const/4 v2, 0x1

    iget-object v9, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostviewReceived() - Handle"

    invoke-static {v0, v1, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsPostviewReceived:Z

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPictureSize()Landroid/util/Size;

    move-result-object v11

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v12

    invoke-virtual {v12}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v0

    invoke-virtual {v12}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1, v10, v10, v2}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v13

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/camera/media/YuvToBitmapWorker;-><init>(Landroid/content/Context;IIIIILandroid/graphics/Bitmap$Config;I)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    new-instance v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;

    invoke-direct {v1, p0, v9}, Lcom/oneplus/camera/ui/ReviewScreenImpl$6;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CaptureHandle;)V

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->setOnBitmapAvailableListener(Lcom/oneplus/camera/media/YuvToBitmapWorker$OnBitmapAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraCaptureEventArgs;->getPicturePlanes()[Lcom/oneplus/camera/media/ImagePlane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/oneplus/camera/media/ImagePlane;->getData()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->addNV21Frame([B)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureInput(II)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->reconfigureOutput(II)V

    goto :goto_0
.end method

.method private onPreviewReceived()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->hideReviewScreen(I)V

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsCameraPreviewReceivedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method

.method private onReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Camera is not running, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen handle is invalid, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen is null, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - Review screen is shown, ignore review image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ThumbnailImage:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReviewImageCreated() - No image"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVideoBitmapDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CaptureHandle:Lcom/oneplus/camera/CaptureHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoBitmapDecoded() - setImageBitmap"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onVideoBitmapDecoded() - m_ReviewImageView is null."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 3

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$7;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$7;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const v2, 0x7f0a0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    const v2, 0x7f0a0106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$8;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$8;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$9;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$9;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$10;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$10;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_CancelButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_RetakeButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addAutoRotateView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->addNavBarAlignedView(Landroid/view/View;)V

    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showReviewScreenDirectly()V
    .locals 8

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsVideoBitmapDecoding:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showReviewScreenDirectly() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    sget-object v2, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewControls:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreen:Landroid/view/View;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setViewVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_OKButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_KeyEventHandle:Lcom/oneplus/base/Handle;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "showReviewScreenDirectly() - No Viewfinder"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMediaResultType()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getMediaResultInfo()Lcom/oneplus/camera/MediaResultInfo;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/oneplus/camera/MediaResultInfo;->extraOutput:Landroid/net/Uri;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    invoke-super/range {p0 .. p1}, Lcom/oneplus/camera/UIComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x2710

    const/16 v3, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v3

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, [B

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-static {v15, v0, v1, v3}, Lcom/oneplus/media/ImageUtils;->decodeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/base/Rotation;

    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_2
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    :cond_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v4, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_THUMBNAIL:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v3, v4, :cond_1

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/16 v5, 0x104

    const/16 v6, 0x104

    const/4 v8, 0x1

    invoke-static {v3, v4, v5, v6, v8}, Lcom/oneplus/util/SizeUtils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Thumb size: "

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v17

    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_2

    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    :cond_1
    const/16 v3, 0x2715

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    const/16 v4, 0x2711

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :pswitch_2
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :pswitch_3
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleAsyncMessage() - Cannot decode review image"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    :pswitch_5
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    :pswitch_6
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v13, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    aget-object v1, v0, v3

    aget-object v2, v0, v4

    invoke-direct {p0, v1, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onReviewImageCreated(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->needMediaInfo()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x2716

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/camera/MediaInfo;

    iput-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->VIDEO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickOKButton()V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickCancelButton()V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    invoke-direct {p0, v3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingOkHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingCancelHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingRetakeHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - On review image timeout"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleMessage() - On media saved timeout"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->onClickRetakeButton(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDeinitialize()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_YuvToBitmapWorker:Lcom/oneplus/camera/media/YuvToBitmapWorker;

    invoke-virtual {v0}, Lcom/oneplus/camera/media/YuvToBitmapWorker;->close()V

    :cond_0
    return-void
.end method

.method protected onInitialize()V
    .locals 4

    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    const-class v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/ProcessingDialog;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ProcessingDialog:Lcom/oneplus/camera/ui/ProcessingDialog;

    const-class v2, Lcom/oneplus/camera/ui/Viewfinder;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/Viewfinder;

    iput-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_Viewfinder:Lcom/oneplus/camera/ui/Viewfinder;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitialize() - Cannot find Viewfinder"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraThread;Lcom/oneplus/camera/CameraActivity;)V

    invoke-static {v1, v2}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;

    invoke-direct {v3, p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl$5;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method

.method public onKeyDown(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public showReviewScreen()Lcom/oneplus/base/Handle;
    .locals 6

    const-wide/16 v4, 0x2710

    const/16 v2, 0x2716

    iget-boolean v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_IsSetupUI:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->setupUI()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Already show review screen, skip"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;

    const-string/jumbo v1, "Show review screen"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/camera/ui/ReviewScreenImpl$ReviewScreenHandle;-><init>(Lcom/oneplus/camera/ui/ReviewScreenImpl;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->updateMediaResultType()V

    :cond_2
    invoke-static {}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-getcom-oneplus-camera-media-MediaTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/media/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewScreenHandle:Lcom/oneplus/base/Handle;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_ReviewImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Wait for review image created"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_MediaResultType:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    sget-object v1, Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;->PHOTO_CONTENT_URI:Lcom/oneplus/camera/ui/ReviewScreenImpl$MediaResultType;

    if-ne v0, v1, :cond_3

    invoke-static {p0, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->m_LastMediaInfo:Lcom/oneplus/camera/MediaInfo;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->showReviewScreenDirectly()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showReviewScreen() - Wait for video media saved"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, v4, v5}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
