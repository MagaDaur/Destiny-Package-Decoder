// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Buffer<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  uint v5 : SV_VERTEXID0,
  uint v6 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD5,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD30,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v5.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v5.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v5.x;
  r0.w = (int)r0.y * 5;
  r0.zw = (int2)r0.zw;
  r0.w = cb0[36].x + r0.w;
  r1.x = (uint)r0.w;
  r1.x = t2.Load(r1.x).w;
  r1.yzw = float3(1,2,4) + r0.www;
  r1.yzw = (uint3)r1.yzw;
  r2.xyzw = t2.Load(r1.y).xyzw;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r4.yzw = t2.Load(r1.w).wyz;
  r1.yzw = cb1[1].xyz * r2.yyy;
  r1.yzw = cb1[0].xyz * r2.xxx + r1.yzw;
  r1.yzw = cb1[2].xyz * r2.zzz + r1.yzw;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r0.w = cmp(1 < cb0[137].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 1;
      r0.w = (uint)r0.w;
      r5.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[137].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r6.xyz = t2.Load(r0.x).xyz;
        r5.xyz = r2.xyz * float3(2,2,2) + -r6.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 1 + r0.x;
        r0.x = (uint)r0.x;
        r5.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r5.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].xyz * r5.yyy;
  r0.xyw = cb1[0].xyz * r5.xxx + r0.xyw;
  r0.xyw = cb1[2].xyz * r5.zzz + r0.xyw;
  r0.xyw = cb1[3].xyz + r0.xyw;
  r0.xyw = r0.xyw + -r1.yzw;
  r2.x = dot(r0.xyw, r0.xyw);
  r2.x = sqrt(r2.x);
  r2.x = cmp(9.99999975e-006 < r2.x);
  r0.xyw = r2.xxx ? r0.xyw : float3(1,0,0);
  r2.xyz = cb12[7].yzx + -r1.zwy;
  r5.xyz = r2.xyz * r0.wxy;
  r2.xyz = r0.ywx * r2.yzx + -r5.xyz;
  r5.x = dot(r2.xyz, r2.xyz);
  r5.x = rsqrt(r5.x);
  r2.xyz = r5.xxx * r2.xyz;
  r0.z = cmp(r0.z < 0.5);
  r5.x = frac(cb0[127].x);
  r5.x = r0.z ? cb0[126].x : r5.x;
  r5.x = 3.14100003 * r5.x;
  sincos(r5.x, r5.x, r6.x);
  r5.y = dot(r0.xyw, r0.xyw);
  r5.y = rsqrt(r5.y);
  r0.xyw = r5.yyy * r0.xyw;
  r5.xyz = r5.xxx * r0.xyw;
  r6.yzw = -r5.yzx * r2.zxy;
  r7.xyz = r2.yzx * -r5.zxy + -r6.yzw;
  r5.w = dot(r2.xyz, -r5.xyz);
  r7.w = -r5.w;
  r8.xyz = r6.xxx * r2.xyz;
  r8.w = 0;
  r7.xyzw = r8.xyzw + r7.xyzw;
  r2.xyz = r7.yzx * r5.zxy;
  r2.xyz = r5.yzx * r7.zxy + -r2.xyz;
  r2.xyz = r6.xxx * r7.xyz + r2.xyz;
  r2.xyz = r7.www * r5.xyz + r2.xyz;
  r5.xyz = float3(0.0130000003,0.0130000003,0.0130000003) * r2.xyz;
  r1.yzw = r2.xyz * float3(0.0130000003,0.0130000003,0.0130000003) + r1.yzw;
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  o1.xyz = r5.xyz * r2.xxx;
  o0.y = r0.z ? cb0[126].x : cb0[127].x;
  r4.x = 0;
  r1.yzw = r4.xxz * r3.xyz + r1.yzw;
  r5.xyzw = cb12[1].xyzw * r1.zzzz;
  r5.xyzw = cb12[0].xyzw * r1.yyyy + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r1.wwww + r5.xyzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  r0.z = cb0[140].x * cb0[15].w;
  r2.x = cmp(0.999000013 < r3.w);
  o0.z = r2.x ? 0 : r0.z;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  o0.x = r2.w;
  o0.w = r5.w;
  p1.x = r4.y;
  o3.xyz = r3.xyz;
  o3.w = r1.x;
  o4.xyzw = r4.xzxw;
  o6.xyzw = r5.xyzw;
  o5.xyz = r0.xyw;
  return;
}