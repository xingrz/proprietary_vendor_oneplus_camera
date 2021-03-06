.class public abstract Lcom/oneplus/gallery/media/BaseGroupMedia;
.super Ljava/lang/Object;
.source "BaseGroupMedia.java"

# interfaces
.implements Lcom/oneplus/gallery/media/GroupMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;
    }
.end annotation


# static fields
.field private static final PRINT_LOGS:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_ActiveGroupMediaLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_CoverIndex:I

.field private m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/ConcurrencyObject",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GroupId:Ljava/lang/String;

.field private final m_GroupMediaChangeCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final m_Handler:Landroid/os/Handler;

.field private m_IsFavorite:Z

.field private m_IsUserCoverFound:Z

.field private final m_MediaId:Lcom/oneplus/gallery/media/MediaId;

.field private m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

.field private m_ParentId:Ljava/lang/Long;

.field private m_SubMedia:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/gallery/media/BaseGroupMedia;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/MediaProvider;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    :goto_0
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/gallery/media/MediaId;

    invoke-direct {v0, p1}, Lcom/oneplus/gallery/media/MediaId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaId:Lcom/oneplus/gallery/media/MediaId;

    new-instance v0, Lcom/oneplus/base/ConcurrencyObject;

    invoke-direct {v0, p4}, Lcom/oneplus/base/ConcurrencyObject;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    iput-object p3, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Media provider is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p4, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->releaseGroupMediaList(Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V

    return-void
.end method

.method private releaseGroupMediaList(Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseGroupMediaList() - Group id: "

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getId()Lcom/oneplus/gallery/media/MediaId;

    move-result-object v2

    const-string/jumbo v3, ", released media list: "

    invoke-static {v0, v1, v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private updateFavoriteState()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    xor-int/2addr v2, v0

    if-nez v2, :cond_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    :try_start_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    iget-boolean v4, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    invoke-interface {v0, v4}, Lcom/oneplus/gallery/media/Media;->setFavorite(Z)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    invoke-interface {v0, p0, v1}, Lcom/oneplus/gallery/media/MediaProvider;->notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    if-nez v0, :cond_0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->updateFavoriteState()V

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->addMedia(Lcom/oneplus/gallery/media/Media;)I

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p0, v2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public addToAlbum(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->addToAlbum(J)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract evaluateGroupIndex(Lcom/oneplus/gallery/media/Media;)I
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCoverIndex()I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    return v0
.end method

.method public getCoverMedia()Lcom/oneplus/gallery/media/Media;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    invoke-virtual {v0}, Lcom/oneplus/base/ConcurrencyObject;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    return-object v0
.end method

.method public getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->getDetails(Lcom/oneplus/gallery/media/Media$MediaDetailsCallback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getHeight()I

    move-result v0

    return v0
.end method

.method public getId()Lcom/oneplus/gallery/media/MediaId;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaId:Lcom/oneplus/gallery/media/MediaId;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLastModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentId()J
    .locals 3

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ParentId:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getSubMedia()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTakenTime()J
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getTakenTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/oneplus/gallery/media/MediaType;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getType()Lcom/oneplus/gallery/media/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getWidth()I

    move-result v0

    return v0
.end method

.method public isCapturedByFrontCamera()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isCapturedByFrontCamera()Z

    move-result v0

    return v0
.end method

.method public isDependencyThread()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isDocumentUri()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->isDocumentUri()Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    return v0
.end method

.method public isFavoriteSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUserCoverFound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    return v0
.end method

.method public openGroupMediaList(Lcom/oneplus/gallery/media/MediaComparator;I)Lcom/oneplus/gallery/media/MediaList;
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/gallery/media/BaseGroupMedia;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openGroupMediaList()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;-><init>(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/MediaComparator;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getSubMedia()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->addMedia(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No comparator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z
.end method

.method public removeFromAlbum(J)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/gallery/media/Media;->removeFromAlbum(J)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeGroupMediaChangeCallback(Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSubMedia(Lcom/oneplus/gallery/media/Media;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    if-nez v0, :cond_0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia;->refreshCover(Lcom/oneplus/gallery/media/Media;Lcom/oneplus/gallery/media/Media;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->updateFavoriteState()V

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_ActiveGroupMediaLists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->removeMedia(Lcom/oneplus/gallery/media/Media;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupMediaChangeCallbacks:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;

    invoke-interface {v0, p0, v2}, Lcom/oneplus/gallery/media/GroupMedia$GroupMediaChangeCallback;->onCoverChanged(Lcom/oneplus/gallery/media/GroupMedia;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setCoverMedia(Lcom/oneplus/gallery/media/Media;I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    const/4 p2, -0x1

    move-object p1, v0

    :goto_0
    iget v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    if-ne v0, p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v1

    if-ne v1, p1, :cond_3

    :goto_2
    return v0

    :cond_1
    if-ltz p2, :cond_0

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverMedia:Lcom/oneplus/base/ConcurrencyObject;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/ConcurrencyObject;->set(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2
.end method

.method public setFavorite(Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, p1}, Lcom/oneplus/gallery/media/Media;->setFavorite(Z)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_MediaProvider:Lcom/oneplus/gallery/media/MediaProvider;

    invoke-interface {v0, p0, v4}, Lcom/oneplus/gallery/media/MediaProvider;->notifyMediaUpdated(Lcom/oneplus/gallery/media/Media;I)V

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setIsUserCoverFound(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->getCoverMedia()Lcom/oneplus/gallery/media/Media;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[Group id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_GroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Cover path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const-string/jumbo v0, "No cover"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Cover index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_CoverIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", User cover found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsUserCoverFound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Favorite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_IsFavorite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Sub media size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia;->m_SubMedia:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/oneplus/gallery/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
