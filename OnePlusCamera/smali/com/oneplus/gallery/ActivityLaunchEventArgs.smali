.class public Lcom/oneplus/gallery/ActivityLaunchEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "ActivityLaunchEventArgs.java"


# instance fields
.field private final m_Activity:Lcom/oneplus/gallery/GalleryActivity;

.field private final m_LaunchType:Lcom/oneplus/gallery/ActivityLaunchType;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/ActivityLaunchType;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/oneplus/gallery/ActivityLaunchEventArgs;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    iput-object p2, p0, Lcom/oneplus/gallery/ActivityLaunchEventArgs;->m_LaunchType:Lcom/oneplus/gallery/ActivityLaunchType;

    return-void
.end method


# virtual methods
.method public getActivity()Lcom/oneplus/gallery/GalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/ActivityLaunchEventArgs;->m_Activity:Lcom/oneplus/gallery/GalleryActivity;

    return-object v0
.end method

.method public getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/ActivityLaunchEventArgs;->m_LaunchType:Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method
