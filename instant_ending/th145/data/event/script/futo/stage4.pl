#========================================================================
#	�z�s�X�g�[���[
#	�X�e�[�W4�@VS��
#	�ꏊ�F���@��
#	�X�e�[�W�^�C�g��
#	   �u�Ō�̃{�[���̎�����́v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/futo.csv"
,LoadImageDef,"data/event/pic/hijiri.csv"

#�t�F�C�X�摜
,DefineObject,futo,-360,0,false
,DefineObject,hijiri,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(705);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,futo_label,50,360,false
,DefineObject,hijiri_label,1120,360,false

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,hijiri,��_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,hijiri,-1280,&
,th145_Show,futo,-1280	,

#,SetFocus,futo		,
#,ImageDef,futo,�z�s_��1,0,0
#�����[���I\n��ƃ{�[����q���ē����[�I\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#����܂�\n���z�{�̕��ł���\,a11x2,0,0
#,ClearBalloon,hijiri
#
##�Љ�J�b�g�\���@���́u��_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,hijiri
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�{�[���̕��������Ă���Ȃ��\n��Ԃ��Ȃ�����\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_�]1,0,0
#�ǂ��ł��H�@���̃{�[��\n���̗l�����r�̖�����͓��̂���\n���̂����Ɋ񑡂���Ɍ���c�c\,c15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_��1,0,0
#���āA����Ȗ󂠂邩�[���I\,b15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_�{1,0,0
#����̎��I�J���g�{�[����\n�D���ɗ����̂�\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�f1,0,0
#����܂�����J�l\n�ł����ɂ���Ď��Ȃ��\,a15x3,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�]1,0,0
#���ɒD���₷���l������\n����ł��傤�H\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_�f1,0,0
#���������Ă���Ɠ����̂�\n�C���i�܂ʂ̂����d��������\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_��1,0,0
#�������Ɏ����Ă���l��\n���q�l�����Ȃ̂���\,a11x2,0,0
#,ClearBalloon,futo
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#���玄�̕���\n�ȒP���Ƃł�\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,Function,"StopBGM(4000);",# BGM��~
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�ŁA�M���͉��ŏW�߂�����\n�v���Ă���́H\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_��1,0,0
#���H\n�����Ď��W�߂�Ɗ肢��\n�������Č�����\,a15x3,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_�]1,0,0
#�肢����������O��́c\,a11x2,0,0
#,ClearBalloon,futo
#
#,SetFocus,futo		,
#,ImageDef,futo,�z�s_��1,0,0
#����Ȃ�ł�����\n�������C�ł��Ă͂������\,a15x3,0,0
#,ClearBalloon,futo

,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�܂�������\,a05x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#���W�߂���\n�{���Ɋ肢�������̂�\,a11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_��1,0,0
#�M���̃{�[����D����\n�����Ă݂܂��傤\,c11x2,0,0
#,ClearBalloon,hijiri
#
#,SetFocus,hijiri		,
#,ImageDef,hijiri,��_�{1,0,0
#���͊肢�������Ƃ�\n��΂Ɏv��Ȃ����ǂˁI\,b11x2,0,0
#,ClearBalloon,hijiri




#���҃t�F�C�X�P��
,th145_Hide,futo,-1280,&
,th145_Hide,hijiri,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End




# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,hijiri,��_�]1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,hijiri,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,hijiri
�����肨������\n����ς荋�؂Ȑ��i�������˂�\,a15x3,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,futo,�z�s_��1,0,0
,ImageDef,hijiri,��_��1,0,0

,th145_Show,futo,-1280	,&,#�z�s�t�F�C�X�\���J�n
,th145_Show,hijiri,-1280	,#�z�s�t�F�C�X�\���J�n

,SetFocus,hijiri
�{��\,a11x2,0,0
,ClearBalloon,hijiri

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
