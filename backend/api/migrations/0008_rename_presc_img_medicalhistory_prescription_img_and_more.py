# Generated by Django 4.2.2 on 2023-09-12 18:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0007_doctor_alter_student_branch_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='medicalhistory',
            old_name='presc_img',
            new_name='prescription_img',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='address',
            new_name='Address',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='age',
            new_name='Age',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='bld_grp',
            new_name='Bld_Grp',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='branch',
            new_name='Branch',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='city',
            new_name='City',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='country',
            new_name='Country',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='email',
            new_name='Email',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='gender',
            new_name='Gender',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='ldap_id',
            new_name='LDAP_ID',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='ldap_pass',
            new_name='LDAP_PASS',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='name',
            new_name='Name',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='phone_num',
            new_name='Phone',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='pincode',
            new_name='Pincode',
        ),
        migrations.RenameField(
            model_name='student',
            old_name='weight_kg',
            new_name='Weight_kg',
        ),
        migrations.RemoveField(
            model_name='student',
            name='yearofstudy',
        ),
        migrations.AddField(
            model_name='student',
            name='Face_Image',
            field=models.ImageField(blank=True, null=True, upload_to='doctors'),
        ),
        migrations.AddField(
            model_name='student',
            name='year_of_study',
            field=models.CharField(blank=True, choices=[('1', 'First Year'), ('2', 'Second Year'), ('3', 'Third Year'), ('4', 'Fourth Year'), ('5', 'Fifth Year'), ('6', 'Sixth Year')], max_length=255, null=True),
        ),
    ]
