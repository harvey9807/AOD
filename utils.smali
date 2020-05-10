.class public Lcom/oneplus/aod/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEBUG_ONEPLUS:Z

.field public static final DEVICE_14001:Ljava/lang/String; = "14001"

.field public static final DEVICE_14049:Ljava/lang/String; = "14049"

.field public static final DEVICE_15055:Ljava/lang/String; = "15055"

.field public static final DEVICE_15801:Ljava/lang/String; = "15801"

.field public static final DEVICE_15811:Ljava/lang/String; = "15811"

.field public static final DEVICE_16859:Ljava/lang/String; = "16859"

.field public static final DEVICE_17801:Ljava/lang/String; = "17801"

.field public static final DEVICE_17819:Ljava/lang/String; = "17819"

.field public static KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

.field public static KEY_MOTION_AWAKE:Ljava/lang/String;

.field public static KEY_NOTIFICATION_WAKE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mCurrentUser:I

.field private static mIsAlwaysOnModeEnabled:Z

.field private static mIsNotificationWakeUpEnabled:Z

.field private static mMotionAwakeOn:Z

.field private static sDeviceTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "OPAodUtils"

    sput-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    .line 18
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/aod/Utils;->DEBUG_ONEPLUS:Z

    .line 21
    const-string/jumbo v0, "prox_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "aod_display_mode"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "notification_wake_enabled"

    sput-object v0, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    sput-object v0, Lcom/oneplus/aod/Utils;->sDeviceTag:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateDozeSettings(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method public static isAlwaysOnEnabled()Z
    .locals 3

    .prologue
    .line 97
    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlwaysOnEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    return v0
.end method

.method public static isMotionAwakeOn()Z
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMotionAwakeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    return v0
.end method

.method public static isNotificationWakeUpEnabled()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    return v0
.end method

.method public static isSupportAlwaysOn()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public static updateAlwaysOnState(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    sget-boolean v4, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/aod/Utils;->KEY_AOD_DISPLAY_MODE:Ljava/lang/String;

    invoke-static {v4, v5, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    sput-boolean v2, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    .line 104
    sget-boolean v2, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    if-eqz v2, :cond_1

    const-string/jumbo v1, "0"

    .line 106
    .local v1, "properties":Ljava/lang/String;
    :goto_1
    :try_start_0
    const-string/jumbo v2, "sys.aod.disable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_2
    sget-object v2, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAlwaysOnState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/oneplus/aod/Utils;->mIsAlwaysOnModeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", user = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .end local v1    # "properties":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    const-string/jumbo v1, "1"

    .restart local v1    # "properties":Ljava/lang/String;
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static updateDozeSettings(Landroid/content/Context;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateMotionAwakeState(Landroid/content/Context;I)V

    .line 125
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateNotificationWakeState(Landroid/content/Context;I)V

    .line 126
    return-void
.end method

.method public static updateMotionAwakeState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/aod/Utils;->KEY_MOTION_AWAKE:Ljava/lang/String;

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    .line 92
    invoke-static {p0, p1}, Lcom/oneplus/aod/Utils;->updateAlwaysOnState(Landroid/content/Context;I)V

    .line 93
    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMotionAwakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mMotionAwakeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0
.end method

.method public static updateNotificationWakeState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/aod/Utils;->KEY_NOTIFICATION_WAKE:Ljava/lang/String;

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    .line 120
    sget-object v0, Lcom/oneplus/aod/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotificationWakeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/oneplus/aod/Utils;->mIsNotificationWakeUpEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0
.end method
