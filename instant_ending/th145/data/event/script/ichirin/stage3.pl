#========================================================================
#	��փX�g�[���[
#	�X�e�[�W3�@VS�j����
#	�ꏊ�F�P�j��
#	�X�e�[�W�^�C�g��
#	   �u�召�s�s�`�����v
#
#========================================================================
:init
,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"
,End

,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/ichirin.csv"
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"

#�t�F�C�X�摜
,DefineObject,ichirin,-360,0,false
,DefineObject,sinmyoumaru,-360,0,true

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

,Function,"GameStory_PlayBGM(701);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,ichirin_label,50,360,false
,DefineObject,sinmyoumaru_label,1120,360,false

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
,Function,GameStory_TitleCall();
,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"

,th145_Show,ichirin,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,ichirin		,#�������L�������w��
�󒆂��Ă�����\n�������̂͂�����˂�\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�f1,0,0
�O�X����C�ɂȂ��Ă��񂾂���\n���̂���A���ŋt���̂܂�\n�Ȃ̂�����H�@���׏Z��H\,a15x3,0,0
,ClearBalloon,ichirin


# 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"


,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
,th145_Show,sinmyoumaru,-1280	,#�j���ۃt�F�C�X�\���J�n
���[���O�A�I�J���g�{�[����\n��R�����Ă�ȁ[�H\,a15x3,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�ށ@�����\,a05x2,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
���͌ւ荂�����l���̖��Ⴜ\n�����_���ɏ�������\,a15x3,0,0
,ClearBalloon,sinmyoumaru

#�Љ�J�b�g�\���@�j���ۂ́u�j����_��1�v����̂ݎ��s�\\,a11x2,0,0
,th145_CharName_Cutin,sinmyoumaru
,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"



,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
���l�[�H\n����Ȏ푰�����񂾁[\,a11x2,0,0
,ClearBalloon,ichirin


,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_�{1,0,0
�������Ǝv�����r�߂Ă������\n�{���ɒɂ��ڂɑ�����\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
��������\n���l���ǂ��\R[�s�s�`��|�I�J���g]��\n�g���̂�����\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_�f1,0,0
������������\,a11x2,0,0
,ClearBalloon,sinmyoumaru


,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�]1,0,0
����������\n�����ȁ[�Ǝv���Ă�\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�Ȃ񂹎���\n���ڂ�����傫�ȓs�s�`����\n�g���Ă邩��\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_�{1,0,0
���A�傪�������˂��\n�v�������ԈႢ��I\,a11x2,0,0
,ClearBalloon,sinmyoumaru
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
�������ҒB�ɖ|�M�����\n���|���v���m��I\,a11x2,0,0
,ClearBalloon,sinmyoumaru




,Function,"StopBGM(500);",# BGM��~

#���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Function,"GameStory_PlayBattleBGM(505);",# �퓬BGM�Đ��J�n

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -----------------
# �퓬����b
:main_2

,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,Sleep,5

#,Move,ichirin,0,-25,25	,#�t�F�C�X�摜�ʒu���g�[�N�ʒu�ɃV�t�g
,th145_Show,ichirin,-1280,&,#��փt�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280,#��փt�F�C�X�\���J�n

,SetFocus,sinmyoumaru		,#�������L�������w��
,ImageDef,sinmyoumaru,�j����_��1,0,0
,th145_Show,sinmyoumaru,-1280	,#&, #�j���ۃt�F�C�X�\���J�n
����A\,a11x2,0,0
,ClearBalloon,sinmyoumaru

#�t�L�_�V�̈ꊇ�����@��������s����܂ŕ��o���͍ی��Ȃ���O�ɑ�����
,ClearBalloon,ichirin
,ClearBalloon,sinmyoumaru

#���҃t�F�C�X�P��
,th145_Hide,ichirin,-1280,&
,th145_Hide,sinmyoumaru,-1280,

,Sleep,60

,Function,"RoundStory_TalkFight();",# TODO::�΍ĊJ����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,ichirin,���_��1,0,0
,ImageDef,sinmyoumaru,�j����_�]1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,sinmyoumaru
��I\n�傫�������Ɏ�I\,b11x2,0,0

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
,ImageDef,ichirin,���_��1,0,0
,ImageDef,sinmyoumaru,�j����_��1,0,0

,th145_Show,ichirin,-1280	,&,#��փt�F�C�X�\���J�n
,th145_Show,sinmyoumaru,-1280	,#��փt�F�C�X�\���J�n

,SetFocus,ichirin		,#�������L�������w��
�ӂ�\n����Ɠ|�����[\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_�]1,0,0
����ς��͏������˂�̂�\n�{�[���͒�����\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
�����Ă��h���{�[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
��������\n���̎����s���Ȃ�ā[\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
�\�ł̓{�[�������W�߂��\n�傫���Ȃ����ĕ������̂�\,a15x3,0,0
,ClearBalloon,sinmyoumaru



,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�����̃s���|�C���g�ȉ\\,a11x2,0,0
,ClearBalloon,ichirin

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
�ƌ������I�J���g�{�[������\n�{���͉��Ȃ̂�����H\,a15x3,0,0
,ClearBalloon,ichirin


,SetFocus,sinmyoumaru
�N�����Z�܂ŏW�߂�̂�\n�҂��Ă���S���D�����\n�������񂾂���\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
�ǂ����{�[�����R������\n������������݂����˂�\n�v�Z�������������\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
����ȕ����ɂ��݂��˂�\n�s�҂̌�������Đ؂Ȃ��˂�\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,�j����_�f1,0,0
���͑��̃{�[���̏��L�҂�\n�m���Ă邯�Ǖ��������Ȃ��̂�\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
���݂܂���\n�M���͐g�̂͏������Ă�\n���͈̑�ł���\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
�ӂ�\n�܁A�ǂ������S�Ď�ɓ���悤��\n���ɂ͊֌W������ł�\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,�j����_��1,0,0
�����Ă�낤�I\,a11x2,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,�j����_��1,0,0
�c��̃{�[����\n����Ȑ�l�������Ă���\n�����đ�����Z�����Ă����\,a15x3,0,0
,ClearBalloon,sinmyoumaru

,SetFocus,ichirin		,#�������L�������w��
,ImageDef,ichirin,���_��1,0,0
���H\n�{�[�����đS���Ŏ�����\n���������́H\,a15x3,0,0
,ClearBalloon,ichirin

,SetFocus,sinmyoumaru
,ImageDef,sinmyoumaru,�j����_�{1,0,0
�ޓz�͎苭�����H\n���񂽂���G��Ȃ������ȁ[\,a15x3,0,0
,ClearBalloon,sinmyoumaru








,Function,"::StopBGM(1500);"
,Thread,"::story.NextStage();"

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
