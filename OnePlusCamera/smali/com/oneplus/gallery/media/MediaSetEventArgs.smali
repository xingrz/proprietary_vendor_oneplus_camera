.class public Lcom/oneplus/gallery/media/MediaSetEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "MediaSetEventArgs.java"


# instance fields
.field private final m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/MediaSet;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaSetEventArgs;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    return-void
.end method


# virtual methods
.method public getMediaSet()Lcom/oneplus/gallery/media/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaSetEventArgs;->m_MediaSet:Lcom/oneplus/gallery/media/MediaSet;

    return-object v0
.end method
