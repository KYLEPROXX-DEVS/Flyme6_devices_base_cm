.class public Landroid/os/BuildExt;
.super Ljava/lang/Object;
.source "BuildExt.java"


# static fields
.field public static final CHINAMOBILE_TEST:Ljava/lang/Boolean;

.field public static final CTA:Ljava/lang/String;

.field public static final CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

.field public static final CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

.field private static final CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

.field public static final HAS_SMARTBAR:Ljava/lang/String;

.field public static final HIDE_INFO:Ljava/lang/Boolean;

.field public static final IS_A02:Ljava/lang/Boolean;

.field public static final IS_CTA:Z

.field public static final IS_FLYMEROM:Z

.field public static final IS_M1:Ljava/lang/Boolean;

.field public static final IS_M1_NOTE:Ljava/lang/Boolean;

.field public static final IS_M2:Ljava/lang/Boolean;

.field public static final IS_M2C:Ljava/lang/Boolean;

.field public static final IS_M2_NOTE:Ljava/lang/Boolean;

.field public static final IS_M2_NOTEC:Ljava/lang/Boolean;

.field public static final IS_M71C:Ljava/lang/Boolean;

.field public static final IS_M80:Ljava/lang/Boolean;

.field public static final IS_M91:Ljava/lang/Boolean;

.field public static final IS_M92:Ljava/lang/Boolean;

.field public static final IS_M95:Ljava/lang/Boolean;

.field public static final IS_M96:Ljava/lang/Boolean;

.field public static final IS_M98:Ljava/lang/Boolean;

.field public static final IS_MA01:Ljava/lang/Boolean;

.field public static final IS_MA01C:Ljava/lang/Boolean;

.field public static final IS_MEDIA_EVAL:Ljava/lang/Boolean;

.field public static final IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

.field public static final IS_MX2:Ljava/lang/Boolean;

.field public static final IS_MX3:Ljava/lang/Boolean;

.field public static final IS_MX4:Ljava/lang/Boolean;

.field public static final IS_MX4_Pro:Ljava/lang/Boolean;

.field public static final IS_MX5:Ljava/lang/Boolean;

.field public static final IS_MX5_PRO:Ljava/lang/Boolean;

.field public static final IS_PRODUCT:Z

.field public static final IS_S25:Ljava/lang/Boolean;

.field public static final IS_SHOPDEMO:Ljava/lang/Boolean;

.field public static final IS_TD_PLATFORM:Ljava/lang/Boolean;

.field public static final IS_U10:Ljava/lang/Boolean;

.field public static final IS_U15:Ljava/lang/Boolean;

.field public static final IS_WCDMA_PLATFORM:Ljava/lang/Boolean;

.field public static final IS_Y15:Ljava/lang/Boolean;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MZ_MODEL:Ljava/lang/String;

.field private static final PROP_KEY_DEVICE_IDENTIFY:Ljava/lang/String; = "ro.product.flyme.model"

.field private static final TAG:Ljava/lang/String; = "BuildExt"

.field private static mHasNavBar:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "ro.build.cta"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    sget-object v0, Landroid/os/BuildExt;->CTA:Ljava/lang/String;

    const-string v3, "cta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    sput-boolean v0, Landroid/os/BuildExt;->IS_FLYMEROM:Z

    const-string v0, "ro.error.receiver.default"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.howell.logsnapshot"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/os/BuildExt;->IS_PRODUCT:Z

    const-string v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "td-scdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    const-string v0, "ro.meizu.hardware.modem"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "wcdma"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_WCDMA_PLATFORM:Ljava/lang/Boolean;

    const-string v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    invoke-static {}, Landroid/os/BuildExt;->isChinaUnicom()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-static {}, Landroid/os/BuildExt;->isChinaMobile()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    const-string v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mobilepublic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    const-string v0, "ro.chinamobile.test"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CHINAMOBILE_TEST:Ljava/lang/Boolean;

    const-string v0, "ro.customize.isp"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "chinatelecom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-object v0, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m75"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "k95v2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "M460A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "mx4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "m76"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "espresso5430"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "exynos5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.arch"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "exynos5430"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m71"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1 note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k52v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m79"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "k32v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    const-string v0, "ro.build.device.name"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m71c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M71C:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MX5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6795"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX5:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NIUX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRO 5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX5_PRO:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6753"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2 note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2_NOTE:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M571C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m81c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2_NOTEC:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt6735"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M578C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m88c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M2C:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MA01C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1c metal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "M57AC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "MA01C"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MA01C:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MA01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kn2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1 metal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MA01:Ljava/lang/Boolean;

    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m8097"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "8097"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M80:Ljava/lang/Boolean;

    const-string v0, "9155"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M91:Ljava/lang/Boolean;

    const-string v0, "9850"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M98:Ljava/lang/Boolean;

    const-string v0, "9597"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M95:Ljava/lang/Boolean;

    const-string v0, "y15"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_Y15:Ljava/lang/Boolean;

    const-string v0, "u15"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_U15:Ljava/lang/Boolean;

    const-string v0, "0255"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_A02:Ljava/lang/Boolean;

    const-string v0, "u10"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1055"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_U10:Ljava/lang/Boolean;

    const-string v0, "2555"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_S25:Ljava/lang/Boolean;

    const-string v0, "9690"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M96:Ljava/lang/Boolean;

    const-string v0, "9257"

    invoke-static {v0}, Landroid/os/BuildExt;->checkProductModel(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_M92:Ljava/lang/Boolean;

    const-string v0, "ro.meizu.product.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->MZ_MODEL:Ljava/lang/String;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    const-string v0, "ro.meizu.customize.demo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    const-string v0, "ro.meizu.build.iseval"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->IS_MEDIA_EVAL:Ljava/lang/Boolean;

    const-string v0, "ro.product.manufacturer"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "ro.flyme.hideinfo"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HIDE_INFO:Ljava/lang/Boolean;

    const-string v0, "ro.meizu.has_smartbar"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_5

    :cond_8
    move v0, v2

    goto/16 :goto_6

    :cond_9
    move v0, v2

    goto/16 :goto_7

    :cond_a
    move v0, v2

    goto/16 :goto_8

    :cond_b
    move v0, v2

    goto/16 :goto_9

    :cond_c
    move v0, v2

    goto/16 :goto_a

    :cond_d
    move v0, v2

    goto/16 :goto_b

    :cond_e
    move v0, v2

    goto/16 :goto_c

    :cond_f
    move v0, v2

    goto/16 :goto_d
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkProductModel(Ljava/lang/String;)Z
    .locals 1
    .param p0, "productModel"    # Ljava/lang/String;

    .prologue
    const-string v0, "ro.product.flyme.model"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getBrightnessMaxLevel()I
    .locals 1

    .prologue
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x7f8

    return v0

    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x800

    return v0

    :cond_3
    const/16 v0, 0xff

    return v0
.end method

.method public static getColorType()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v0, "/proc/lk_info/colortype"

    .local v0, "clolorTypePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "unknown"

    return-object v6

    :cond_0
    const/4 v3, 0x0

    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v5, "tempString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "tempString":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    :goto_0
    const-string v6, "unknown"

    return-object v6

    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private static getInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEseSmartMX(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartmx_ese"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNFC()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v3, "ro.product.manufacturer"

    invoke-static {v3}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "manufacturer":Ljava/lang/String;
    const-string v3, "meizu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ro.meizu.hardware.nfc"

    invoke-static {v3}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    return v3

    :cond_1
    return v5

    :cond_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_3

    const-string v3, "BuildExt"

    const-string v4, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    :try_start_0
    const-string v3, "android.hardware.nfc"

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BuildExt"

    const-string v4, "Package manager query failed, assuming no NFC feature"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public static hasNavigationBar()Z
    .locals 4

    .prologue
    sget-object v3, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    const/4 v1, 0x0

    .local v1, "hasNavBar":Z
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .local v2, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .end local v1    # "hasNavBar":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    :cond_0
    sget-object v3, Landroid/os/BuildExt;->mHasNavBar:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .restart local v1    # "hasNavBar":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static hasSmartBar()Z
    .locals 2

    .prologue
    sget-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->HAS_SMARTBAR:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBlackDevice()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    sget-object v1, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "sys/devices/mx_tsp/appid"

    invoke-static {v1}, Landroid/os/BuildExt;->readFromFb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "deviceTpColor":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "B:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "BS:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static isBrcm43341()Z
    .locals 2

    .prologue
    const-string v0, "brcm43341"

    const-string v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isChinaMobile()Ljava/lang/Boolean;
    .locals 2

    .prologue
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinamobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static isChinaUnicom()Ljava/lang/Boolean;
    .locals 2

    .prologue
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_ISP_VALUE:Ljava/lang/String;

    const-string v1, "chinaunicom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isCmccSimCard()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "tempProp":[Ljava/lang/String;
    array-length v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "tempProp":[Ljava/lang/String;
    :cond_0
    const-string v2, "BuildExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCmcc prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "46000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46002"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46007"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    return v5
.end method

.method public static isDailyFirmware()Z
    .locals 2

    .prologue
    const-string v0, "ro.meizu.build.isdaily"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFlymeRom()Z
    .locals 2

    .prologue
    const-string v1, "ro.meizu.rom.config"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "romConfig":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isIndiaVersion()Z
    .locals 2

    .prologue
    const-string v0, "ro.meizu.locale.region"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "india"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJcopUpgradeSupported()Z
    .locals 2

    .prologue
    const-string v0, "true"

    const-string v1, "ro.product.jcopupgrade"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLtgModem()Z
    .locals 2

    .prologue
    const-string v0, "TD"

    const-string v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLwgModem()Z
    .locals 2

    .prologue
    const-string v0, "UMTS"

    const-string v1, "sys.baseband"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMarshallowFlymePermissionDisable()Z
    .locals 2

    .prologue
    const-string v0, "persist.sys.m.flymesafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMtkPlatform()Z
    .locals 2

    .prologue
    const-string v1, "ro.mediatek.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "platformMtk":Ljava/lang/String;
    const-string v1, "MT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isMzProduct()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNxpPn547()Z
    .locals 2

    .prologue
    const-string v0, "nxppn547"

    const-string v1, "ro.nfc.platform"

    invoke-static {v1}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isProductInternational()Z
    .locals 2

    .prologue
    const-string v0, "ro.product.locale.language"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.locale.region"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ro.product.locale"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProductOnlySoldInInternational()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "ro.meizu.hardware.version"

    invoke-static {v2}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "hardwareInfo":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, "5"

    aput-object v2, v1, v5

    .local v1, "intlCode":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    return v4
.end method

.method public static isShopDemoVersion()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUnicomSimCard()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "tempProp":[Ljava/lang/String;
    array-length v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .end local v1    # "tempProp":[Ljava/lang/String;
    :cond_0
    const-string v2, "BuildExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUnicom prop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "46001"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v5
.end method

.method public static isWeeklyFirmware()Z
    .locals 2

    .prologue
    const-string v0, "ro.meizu.build.isbeta"

    invoke-static {v0}, Landroid/os/BuildExt;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static readFromFb(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "deviceNode"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .local v2, "fin":Ljava/io/FileInputStream;
    const/16 v7, 0x80

    new-array v4, v7, [B

    .local v4, "inOutb":[B
    const/4 v5, 0x0

    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v6, "str":Ljava/lang/String;
    :try_start_2
    const-string v7, "BuildExt"

    .end local v5    # "str":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cat sys/devices/mx_tsp/appid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v6

    :catch_0
    move-exception v1

    :cond_0
    return-object v10

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    :goto_0
    :try_start_4
    const-string v7, "BuildExt"

    const-string v8, "readFromFb error: "

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v5

    :catch_2
    move-exception v1

    :cond_1
    return-object v10

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_3
    move-exception v0

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_6
    const-string v7, "BuildExt"

    const-string v8, "readFromFb error: "

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    return-object v5

    :catch_4
    move-exception v1

    :cond_2
    return-object v10

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    return-object v5

    :catch_5
    move-exception v1

    :cond_3
    return-object v10

    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/lang/String;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "str":Ljava/lang/String;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "str":Ljava/lang/String;
    :catch_8
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "str":Ljava/lang/String;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_9
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public static setEseSmartMX(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smartmx_ese"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method