.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1038
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1039
    const v1, 0x112004a

    .line 1038
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set7(Lcom/android/server/BatteryService;Z)Z

    .line 1042
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1043
    const v1, 0x3f070008

    .line 1042
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set0(Lcom/android/server/BatteryService;Z)Z

    .line 1046
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1047
    const v1, 0x3f070009

    .line 1046
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set9(Lcom/android/server/BatteryService;Z)Z

    .line 1049
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1050
    const v1, 0x10e005b

    .line 1049
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1051
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1052
    const v1, 0x10e005c

    .line 1051
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1056
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1057
    const v1, 0x3f07000a

    .line 1056
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/BatteryService;->-set11(Lcom/android/server/BatteryService;Z)Z

    .line 1034
    return-void
.end method

.method private isHvdcpPresent()Z
    .locals 11

    .prologue
    .line 1061
    new-instance v9, Ljava/io/File;

    const-string/jumbo v1, "/sys/class/power_supply/usb/type"

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v9, "mChargerTypeFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 1067
    .local v10, "ret":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1069
    return v10

    .line 1073
    :cond_0
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 1074
    .local v8, "fileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1075
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v3, "USB_HVDCP"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    const/4 v10, 0x1

    .line 1078
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1079
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .end local v0    # "type":Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "fileReader":Ljava/io/FileReader;
    :goto_0
    return v10

    .line 1080
    :catch_0
    move-exception v7

    .line 1081
    .local v7, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Failure in reading charger type"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1092
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1093
    invoke-static {}, Lcom/android/server/BatteryService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateLightsLocked: mBatteryProps is null; skipping"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1097
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v0, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 1098
    .local v0, "level":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get6(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v2

    iget v1, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 1099
    .local v1, "status":I
    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get21(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-static {v3, v2}, Lcom/android/server/BatteryService;->-set10(Lcom/android/server/BatteryService;I)I

    .line 1102
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get13(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1104
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1090
    :goto_1
    return-void

    .line 1100
    :cond_1
    const/16 v2, 0xff

    goto :goto_0

    .line 1105
    :cond_2
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get15(Lcom/android/server/BatteryService;)I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1106
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1107
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 1106
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 1108
    if-ne v1, v5, :cond_3

    .line 1110
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 1111
    :cond_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-get12(Lcom/android/server/BatteryService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1113
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get4(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1114
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1113
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 1117
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_1

    .line 1119
    :cond_5
    if-eq v1, v5, :cond_6

    .line 1120
    if-ne v1, v7, :cond_a

    .line 1121
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get19(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1122
    iget-object v4, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->-get17(Lcom/android/server/BatteryService;)Z

    move-result v4

    .line 1121
    invoke-virtual {v2, v3, v4}, Lcom/android/server/lights/Light;->setModes(IZ)V

    .line 1123
    if-eq v1, v7, :cond_7

    const/16 v2, 0x5a

    if-lt v0, v2, :cond_8

    .line 1125
    :cond_7
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get2(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 1127
    :cond_8
    invoke-direct {p0}, Lcom/android/server/BatteryService$Led;->isHvdcpPresent()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "persist.sys.ts.nochgp_en_b"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1129
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    .line 1130
    iget v4, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1129
    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto/16 :goto_1

    .line 1133
    :cond_9
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get5(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto/16 :goto_1

    .line 1138
    :cond_a
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_1
.end method
