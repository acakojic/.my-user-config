package com.acakojic.testapp.hide_apps;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.util.Log;

import com.acakojic.testapp.R;

import java.util.Collections;
import java.util.List;

public class HideApp extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.hide_app);

//        showAllPackages();

//        showPackagesLancherActivity();

        hideAppSecond();
    }

    private void showAllPackages() {

        PackageManager packageManager = getPackageManager();

        List<ApplicationInfo> packages = packageManager.getInstalledApplications(PackageManager.GET_META_DATA);

        Log.d("Package size", String.valueOf(packages.size()));

        for (int i = 0; i < packages.size(); i++) {

            if (!packages.get(i).packageName.startsWith("com.android.")) {

                Log.d("Package", packages.get(i).packageName);
            }
        }
    }

    private void showPackagesLancherActivity () {

        final PackageManager pm = getPackageManager();
        Intent mainIntent = new Intent(Intent.ACTION_MAIN, null);
        mainIntent.addCategory(Intent.CATEGORY_LAUNCHER);

        List<ResolveInfo> appList = pm.queryIntentActivities(mainIntent, 0);
        Collections.sort(appList, new ResolveInfo.DisplayNameComparator(pm));

        for (ResolveInfo temp : appList) {

            Log.d("my logs", "package and activity name = "
                    + temp.activityInfo.packageName + "    "
                    + temp.activityInfo.name);
        }
    }

    private void hideAppSecond() {

        PackageManager p = getPackageManager();
        ComponentName componentName = new ComponentName("com.acakojic.testapp02", "com.acakojic.testapp02.MainActivity"); // activity which is first time open in manifiest file which is declare as <category android:name="android.intent.category.LAUNCHER" />
        p.setComponentEnabledSetting(componentName,PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
    }

}
