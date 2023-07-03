// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
cbuffer cb9 : register(b9)
{
  float4 cb9[6];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float3 v0 : POSITION0,
  float3 v1 : TEXCOORD0,
  float4 v2 : NORMAL0,
  float4 v3 : TEXCOORD1,
  float3 v4 : TEXCOORD2,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[8].x < 9.99999997e-007);
  if (r0.x != 0) {
    o2.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o4.xyzw = float4(0,0,0,0);
    r0.x = 0;
    o6.xyzw = float4(0,0,0,0);
    o7.xyzw = float4(0,0,0,0);
    o0.xyz = float3(10000,10000,-10000);
    o1.xyz = float3(0,0,0);
  } else {
    r0.yzw = cb9[4].xyz + v1.xyz;
    r1.xyz = cb9[5].zxy * v2.yzx;
    r1.xyz = cb9[5].yzx * v2.zxy + -r1.xyz;
    r1.w = dot(cb9[5].xyz, v2.xyz);
    r2.w = -r1.w;
    r2.xyz = cb9[5].www * v2.xyz + r1.xyz;
    r1.xyzw = v2.wwww * cb9[5].xyzw + r2.xyzw;
    r2.xyz = float3(-0.5,-0.5,-0.5) + v0.xyz;
    r3.xyz = v3.xyz * r2.xyz;
    r4.xyz = r3.zxy * -r1.yzx;
    r4.xyz = r3.yzx * -r1.zxy + -r4.xyz;
    r2.w = dot(r3.xyz, -r1.xyz);
    r4.w = -r2.w;
    r3.xyz = r3.xyz * r1.www;
    r3.w = 0;
    r3.xyzw = r4.xyzw + r3.xyzw;
    r4.xyz = r3.yzx * r1.zxy;
    r4.xyz = r1.yzx * r3.zxy + -r4.xyz;
    r3.xyz = r1.www * r3.xyz + r4.xyz;
    r3.xyz = r3.www * r1.xyz + r3.xyz;
    r3.xyz = r3.xyz + r0.yzw;
    r4.xyzw = cb12[1].xyzw * r3.yyyy;
    r4.xyzw = cb12[0].xyzw * r3.xxxx + r4.xyzw;
    r4.xyzw = cb12[2].xyzw * r3.zzzz + r4.xyzw;
    o7.xyzw = cb12[3].xyzw + r4.xyzw;
    r3.xyz = cb12[7].xyz + -r3.xyz;
    r4.xyzw = float4(1,0,0,-1) * r1.wwww;
    r5.xyzw = r1.zzyx * float4(-0,1,-1,1) + r4.xyyy;
    r6.xyz = r5.yzx * r1.zxy;
    r6.xyz = r1.yzx * r5.zxy + -r6.xyz;
    r5.xyz = r1.www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * r1.xyz + r5.xyz;
    r2.w = dot(r5.xyz, r5.xyz);
    r2.w = rsqrt(r2.w);
    r5.xyz = r5.xyz * r2.www;
    r6.xyzw = r1.zxxy * float4(1,-0,-1,-1) + r4.zwzz;
    r7.xyz = r6.yzx * r1.zxy;
    r7.xyz = r1.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r1.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r1.xyz + r6.xyz;
    r2.w = dot(r6.xyz, r6.xyz);
    r2.w = rsqrt(r2.w);
    r6.xyz = r6.xyz * r2.www;
    r4.xyzw = r1.yxyz * float4(-1,1,-0,-1) + r4.zzwz;
    r7.xyz = r4.yzx * r1.zxy;
    r7.xyz = r1.yzx * r4.zxy + -r7.xyz;
    r4.xyz = r1.www * r4.xyz + r7.xyz;
    r1.xyz = r4.www * r1.xyz + r4.xyz;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
    r4.xyz = float3(1,1,1) / v3.xyz;
    r7.xyz = cb12[7].xyz + -r0.yzw;
    r8.x = dot(r7.xyz, r5.xyz);
    r8.y = dot(r7.xyz, r6.xyz);
    r8.z = dot(r7.xyz, r1.xyz);
    o1.xyz = r8.xyz * r4.xyz;
    o6.xyz = float3(1,-1,-1) * r2.xyz;
    o6.w = dot(r3.xyz, cb12[6].xyz);
    r1.w = saturate(v4.x / v4.z);
    r2.xyz = r1.www * float3(59.9999962,-0.0390629992,-7.43589687) + float3(0,1.000651,7.43589687);
    r3.xyzw = cmp(r1.wwww >= float4(0,0.0166669991,0.870000005,1));
    r3.xyzw = r3.xyzw ? float4(1,1,1,1) : 0;
    r3.xyz = r3.xyz + r3.yzw;
    r3.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.xyz;
    r3.xyz = float3(0.5,0.5,0.5) * r3.xyz;
    r3.xyz = frac(r3.xyz);
    r2.xyz = r3.xyz * r2.xyz;
    r2.xy = r2.xy + r2.xy;
    r1.w = r2.x + r2.y;
    r1.w = r2.z * 2 + r1.w;
    r0.x = min(1, r1.w);
    o2.w = v3.x;
    o2.xyz = r5.xyz;
    o3.w = v3.y;
    o3.xyz = r6.xyz;
    o4.w = v3.z;
    o4.xyz = r1.xyz;
    o0.xyz = r0.yzw;
  }
  o5.x = r0.x;
  o5.yzw = float3(0,0,0);
  return;
}