.class Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0x10


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field mHotlistSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessenger:Landroid/os/Messenger;

.field mScanPeriods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mScanSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mScanWorkReported:Z

.field mSignificantWifiHandlers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUid:I

.field private final mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiScanningServiceImpl;ILcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiScanningServiceImpl;
    .param p2, "uid"    # I
    .param p3, "c"    # Lcom/android/internal/util/AsyncChannel;
    .param p4, "m"    # Landroid/os/Messenger;

    .prologue
    const/4 v1, 0x4

    .line 563
    iput-object p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    .line 649
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    .line 795
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 794
    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    .line 564
    iput-object p3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 565
    iput-object p4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    .line 566
    iput p2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    .line 567
    new-instance v0, Landroid/os/WorkSource;

    const-string/jumbo v1, "WifiScanningService"

    invoke-direct {v0, p2, v1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    .line 563
    return-void
.end method


# virtual methods
.method addHostlistSettings(Landroid/net/wifi/WifiScanner$HotlistSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$HotlistSettings;
    .param p2, "handler"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    return-void
.end method

.method addScanRequest(Landroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 2
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "id"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    .line 651
    return-void
.end method

.method addSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 850
    return-void
.end method

.method cleanup()V
    .locals 4

    .prologue
    .line 885
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 886
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetBuckets()Z

    .line 888
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 889
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->resetHotlist()V

    .line 891
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "handler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 892
    .local v0, "handler":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->untrackWifiChanges(Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;I)V

    goto :goto_0

    .line 895
    .end local v0    # "handler":Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Successfully stopped all requests for client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 756
    new-instance v0, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-direct {v0, p2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;-><init>([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 757
    .local v0, "parcelableScanData":Landroid/net/wifi/WifiScanner$ParcelableScanData;
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 754
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    iget-object v4, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 636
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 638
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    const-string/jumbo v4, "ScanId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 641
    .local v3, "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    invoke-static {v3}, Lcom/android/server/wifi/WifiScanningServiceImpl;->describe(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v3    # "scanSettings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method getCsph()I
    .locals 7

    .prologue
    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "csph":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getScanSettings()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "settings$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 600
    .local v3, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 601
    .local v1, "num_channels":I
    :goto_1
    if-nez v1, :cond_0

    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-eqz v5, :cond_0

    .line 602
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v5}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v5

    array-length v1, v5

    .line 605
    :cond_0
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 606
    .local v2, "scans_per_Hour":I
    :goto_2
    mul-int v5, v1, v2

    add-int/2addr v0, v5

    goto :goto_0

    .line 600
    .end local v1    # "num_channels":I
    .end local v2    # "scans_per_Hour":I
    :cond_1
    iget-object v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    array-length v1, v5

    .restart local v1    # "num_channels":I
    goto :goto_1

    .line 605
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    const v6, 0x36ee80

    div-int v2, v6, v5

    .restart local v2    # "scans_per_Hour":I
    goto :goto_2

    .line 609
    .end local v1    # "num_channels":I
    .end local v2    # "scans_per_Hour":I
    .end local v3    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_3
    return v0
.end method

.method getHotlistSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$HotlistSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getScanSettings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getScans()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method getWifiChangeHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    return-object v0
.end method

.method removeAllScanRequests()V
    .locals 6

    .prologue
    .line 666
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 667
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 669
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 670
    .local v2, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    const-string/jumbo v3, "WifiScanningService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pending scan removed, handler="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    const-string/jumbo v5, ", period="

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 671
    iget v5, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 665
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$ScanSettings;>;"
    .end local v2    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_0
    return-void
.end method

.method removeHostlistSettings(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    return-void
.end method

.method removeScanRequest(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 657
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 658
    .local v0, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27017

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 662
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanWorkUpdate()V

    .line 656
    return-void
.end method

.method removeSignificantWifiChange(I)V
    .locals 2
    .param p1, "handler"    # I

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 854
    return-void
.end method

.method reportBatchedScanStart()V
    .locals 4

    .prologue
    .line 572
    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v2, :cond_0

    .line 573
    return-void

    .line 575
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->getCsph()I

    move-result v0

    .line 578
    .local v0, "csph":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3, v0}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "started scanning for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", csph = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed to report scan work: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap6(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportBatchedScanStop()V
    .locals 3

    .prologue
    .line 586
    iget v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    if-nez v1, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get0(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopped scanning for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to cleanup scan work: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap6(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportFullScanResult(Landroid/net/wifi/ScanResult;)V
    .locals 11
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v8, 0x0

    .line 761
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 762
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 763
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 764
    .local v2, "handler":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 765
    .local v5, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v1, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 766
    .local v1, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v6, :cond_1

    .line 767
    if-nez v1, :cond_4

    .line 768
    :cond_1
    :goto_0
    iget v6, v5, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v6}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v1

    .line 770
    :cond_2
    array-length v9, v1

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v0, v1, v7

    .line 771
    .local v0, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v6, v0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    iget v10, p1, Landroid/net/wifi/ScanResult;->frequency:I

    if-ne v6, v10, :cond_3

    .line 772
    new-instance v4, Landroid/net/wifi/ScanResult;

    invoke-direct {v4, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 774
    .local v4, "newResult":Landroid/net/wifi/ScanResult;
    iget-object v6, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v6, v4, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 775
    iget-object v6, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    .line 776
    const v10, 0x27014

    .line 775
    invoke-virtual {v6, v10, v8, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 770
    .end local v4    # "newResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 767
    .end local v0    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_4
    array-length v6, v1

    if-nez v6, :cond_2

    goto :goto_0

    .line 760
    .end local v1    # "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .end local v2    # "handler":I
    .end local v5    # "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    :cond_5
    return-void
.end method

.method reportHotlistResults(I[Landroid/net/wifi/ScanResult;)V
    .locals 18
    .param p1, "what"    # I
    .param p2, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mHotlistSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 812
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 813
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 814
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 815
    .local v3, "handler":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$HotlistSettings;

    .line 816
    .local v10, "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    const/4 v6, 0x0

    .line 817
    .local v6, "num_results":I
    const/4 v11, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    move v12, v11

    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v8, p2, v12

    .line 818
    .local v8, "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    const/4 v11, 0x0

    array-length v15, v14

    :goto_2
    if-ge v11, v15, :cond_0

    aget-object v1, v14, v11

    .line 819
    .local v1, "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 820
    add-int/lit8 v6, v6, 0x1

    .line 817
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_0
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 818
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 826
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_2
    if-nez v6, :cond_3

    .line 828
    return-void

    .line 831
    :cond_3
    new-array v9, v6, [Landroid/net/wifi/ScanResult;

    .line 832
    .local v9, "results2":[Landroid/net/wifi/ScanResult;
    const/4 v4, 0x0

    .line 833
    .local v4, "index":I
    const/4 v11, 0x0

    move-object/from16 v0, p2

    array-length v13, v0

    move v12, v11

    :goto_3
    if-ge v12, v13, :cond_6

    aget-object v8, p2, v12

    .line 834
    .restart local v8    # "result":Landroid/net/wifi/ScanResult;
    iget-object v14, v10, Landroid/net/wifi/WifiScanner$HotlistSettings;->bssidInfos:[Landroid/net/wifi/WifiScanner$BssidInfo;

    const/4 v11, 0x0

    array-length v15, v14

    :goto_4
    if-ge v11, v15, :cond_5

    aget-object v1, v14, v11

    .line 835
    .restart local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    iget-object v0, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Landroid/net/wifi/WifiScanner$BssidInfo;->bssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 836
    aput-object v8, v9, v4

    .line 837
    add-int/lit8 v4, v4, 0x1

    .line 834
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 833
    .end local v1    # "BssidInfo":Landroid/net/wifi/WifiScanner$BssidInfo;
    :cond_5
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_3

    .line 843
    .end local v8    # "result":Landroid/net/wifi/ScanResult;
    :cond_6
    new-instance v7, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v7, v9}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 845
    .local v7, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-virtual {v11, v0, v12, v3, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 809
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/wifi/WifiScanner$HotlistSettings;>;"
    .end local v3    # "handler":I
    .end local v4    # "index":I
    .end local v6    # "num_results":I
    .end local v7    # "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    .end local v9    # "results2":[Landroid/net/wifi/ScanResult;
    .end local v10    # "settings":Landroid/net/wifi/WifiScanner$HotlistSettings;
    :cond_7
    return-void
.end method

.method reportPeriodChanged(ILandroid/net/wifi/WifiScanner$ScanSettings;I)V
    .locals 4
    .param p1, "handler"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "newPeriodInMs"    # I

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanPeriods:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 784
    .local v1, "prevPeriodObject":Ljava/lang/Integer;
    iget v0, p2, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    .line 785
    .local v0, "prevPeriodInMs":I
    if-eqz v1, :cond_0

    .line 786
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    :cond_0
    if-eq v0, p3, :cond_1

    .line 790
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x27013

    invoke-virtual {v2, v3, p3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 782
    :cond_1
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 685
    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 686
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 688
    .local v0, "handler":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V

    goto :goto_0

    .line 684
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportScanResults([Landroid/net/wifi/WifiScanner$ScanData;I)V
    .locals 20
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;
    .param p2, "handler"    # I

    .prologue
    .line 693
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 694
    .local v10, "settings":Landroid/net/wifi/WifiScanner$ScanSettings;
    iget-object v4, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 695
    .local v4, "desiredChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    if-nez v11, :cond_0

    .line 696
    if-nez v4, :cond_4

    .line 697
    :cond_0
    :goto_0
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap0(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    move-result-object v4

    .line 701
    :cond_1
    const/4 v6, 0x0

    .line 702
    .local v6, "num_results":I
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    move v13, v11

    :goto_1
    if-ge v13, v14, :cond_7

    aget-object v7, p1, v13

    .line 703
    .local v7, "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v3, 0x0

    .line 704
    .local v3, "copyScanData":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v15

    const/4 v11, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v12, v11

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    aget-object v9, v15, v12

    .line 705
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    array-length v0, v4

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    aget-object v2, v4, v11

    .line 706
    .local v2, "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v18, v0

    iget v0, v9, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 707
    const/4 v3, 0x1

    .line 711
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_2
    if-eqz v3, :cond_6

    .line 712
    add-int/lit8 v6, v6, 0x1

    .line 702
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_3
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_1

    .line 696
    .end local v3    # "copyScanData":Z
    .end local v6    # "num_results":I
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    :cond_4
    array-length v11, v4

    if-nez v11, :cond_1

    goto :goto_0

    .line 705
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v3    # "copyScanData":Z
    .restart local v6    # "num_results":I
    .restart local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 704
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_2

    .line 718
    .end local v3    # "copyScanData":Z
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "results = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", num_results = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 720
    new-array v8, v6, [Landroid/net/wifi/WifiScanner$ScanData;

    .line 721
    .local v8, "results2":[Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v5, 0x0

    .line 722
    .local v5, "index":I
    const/4 v11, 0x0

    move-object/from16 v0, p1

    array-length v14, v0

    move v13, v11

    :goto_4
    if-ge v13, v14, :cond_d

    aget-object v7, p1, v13

    .line 723
    .restart local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    const/4 v3, 0x0

    .line 724
    .restart local v3    # "copyScanData":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v15

    const/4 v11, 0x0

    array-length v0, v15

    move/from16 v16, v0

    move v12, v11

    :goto_5
    move/from16 v0, v16

    if-ge v12, v0, :cond_9

    aget-object v9, v15, v12

    .line 725
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    const/4 v11, 0x0

    array-length v0, v4

    move/from16 v17, v0

    :goto_6
    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    aget-object v2, v4, v11

    .line 726
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v0, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    move/from16 v18, v0

    iget v0, v9, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 727
    const/4 v3, 0x1

    .line 731
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_8
    if-eqz v3, :cond_c

    .line 736
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_9
    if-eqz v3, :cond_a

    .line 740
    new-instance v11, Landroid/net/wifi/WifiScanner$ScanData;

    invoke-direct {v11, v7}, Landroid/net/wifi/WifiScanner$ScanData;-><init>(Landroid/net/wifi/WifiScanner$ScanData;)V

    aput-object v11, v8, v5

    .line 741
    add-int/lit8 v5, v5, 0x1

    .line 722
    :cond_a
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_4

    .line 725
    .restart local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 724
    .end local v2    # "channelSpec":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_c
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_5

    .line 745
    .end local v3    # "copyScanData":Z
    .end local v7    # "result":Landroid/net/wifi/WifiScanner$ScanData;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "delivering results, num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-wrap4(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->deliverScanResults(I[Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 748
    iget v11, v10, Landroid/net/wifi/WifiScanner$ScanSettings;->periodInMs:I

    if-nez v11, :cond_e

    .line 750
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/WifiScanningServiceImpl;

    invoke-static {v11}, Lcom/android/server/wifi/WifiScanningServiceImpl;->-get5(Lcom/android/server/wifi/WifiScanningServiceImpl;)Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;

    move-result-object v11

    const v12, 0x2710a

    const/4 v13, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v11, v12, v13, v0, v1}, Lcom/android/server/wifi/WifiScanningServiceImpl$WifiScanningStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 692
    :cond_e
    return-void
.end method

.method reportScanWorkUpdate()V
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStop()V

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->reportBatchedScanStart()V

    .line 619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mScanWorkReported:Z

    .line 612
    :cond_1
    return-void
.end method

.method reportWifiChanged([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 864
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 865
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 866
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 867
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 868
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x2700f

    .line 869
    const/4 v5, 0x0

    .line 868
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 862
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method reportWifiStabilized([Landroid/net/wifi/ScanResult;)V
    .locals 6
    .param p1, "results"    # [Landroid/net/wifi/ScanResult;

    .prologue
    .line 875
    new-instance v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;-><init>([Landroid/net/wifi/ScanResult;)V

    .line 876
    .local v2, "parcelableScanResults":Landroid/net/wifi/WifiScanner$ParcelableScanResults;
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mSignificantWifiHandlers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 877
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 878
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 879
    .local v0, "handler":I
    iget-object v3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x27010

    .line 880
    const/4 v5, 0x0

    .line 879
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 873
    .end local v0    # "handler":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 626
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string/jumbo v1, "mMessenger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 628
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
