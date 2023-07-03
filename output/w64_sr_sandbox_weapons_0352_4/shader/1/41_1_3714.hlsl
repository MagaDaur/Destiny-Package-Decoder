// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
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
  float4 cb0[120];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  uint v9 : SV_VERTEXID0,
  uint v10 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float3 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v9.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = (int)v9.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.5 + -0.5;
  r0.x = round(r0.x);
  r0.y = (int)r0.x;
  r0.z = (uint)r0.y << 1;
  r0.z = (int)-r0.z + (int)v9.x;
  r0.w = (int)r0.y * 9;
  r0.zw = (int2)r0.zw;
  r0.w = cb0[36].x + r0.w;
  r1.xyzw = float4(5,2,3,6) + r0.wwww;
  r1.xyzw = (uint4)r1.xyzw;
  r2.xyzw = t2.Load(r1.x).xyzw;
  r1.x = t2.Load(r1.y).w;
  r3.xyzw = t2.Load(r1.z).xyzw;
  r1.y = (uint)r0.w;
  o3.xyzw = t2.Load(r1.y).xyzw;
  r1.yzw = t2.Load(r1.w).xyw;
  r4.xyz = float3(7,1,8) + r0.www;
  r4.xyz = (uint3)r4.xyz;
  r5.xyzw = t2.Load(r4.x).xyzw;
  o4.xyzw = t2.Load(r4.y).xyzw;
  r4.xy = t2.Load(r4.z).xy;
  r6.xyz = cb1[1].xyz * r3.yyy;
  r6.xyz = cb1[0].xyz * r3.xxx + r6.xyz;
  r6.xyz = cb1[2].xyz * r3.zzz + r6.xyz;
  r6.xyz = cb1[3].xyz + r6.xyz;
  r0.w = cmp(1 < cb0[104].x);
  if (r0.w != 0) {
    r0.w = cmp((int)r0.y < 0);
    if (r0.w != 0) {
      r0.w = cb0[36].x + 3;
      r0.w = (uint)r0.w;
      r7.xyz = t2.Load(r0.w).xyz;
    } else {
      r0.w = cb0[104].x + -1;
      r0.x = r0.x + -r0.w;
      r0.x = cmp(abs(r0.x) < 0.00100000005);
      if (r0.x != 0) {
        r0.x = (int)r0.y + -1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r8.xyz = t2.Load(r0.x).xyz;
        r7.xyz = r3.xyz * float3(2,2,2) + -r8.xyz;
      } else {
        r0.x = (int)r0.y + 1;
        r0.x = (int)r0.x;
        r0.x = r0.x * cb0[37].x + cb0[36].x;
        r0.x = 3 + r0.x;
        r0.x = (uint)r0.x;
        r7.xyz = t2.Load(r0.x).xyz;
      }
    }
  } else {
    r7.xyz = float3(0,0,0);
  }
  r0.xyw = cb1[1].xyz * r7.yyy;
  r0.xyw = cb1[0].xyz * r7.xxx + r0.xyw;
  r0.xyw = cb1[2].xyz * r7.zzz + r0.xyw;
  r0.xyw = cb1[3].xyz + r0.xyw;
  r0.xyw = r0.xyw + -r6.xyz;
  r3.x = dot(r0.xyw, r0.xyw);
  r3.x = sqrt(r3.x);
  r3.x = cmp(9.99999975e-006 < r3.x);
  r0.xyw = r3.xxx ? r0.xyw : float3(1,0,0);
  r3.xyz = cb12[7].xyz + -r6.xyz;
  r4.zw = cos(r2.xy);
  r7.x = r4.z * r4.w;
  r2.x = sin(r2.x);
  r7.y = r2.x * r4.w;
  r7.z = sin(-r2.y);
  r0.z = cmp(r0.z < 0.5);
  r2.x = frac(cb0[107].x);
  r2.x = r0.z ? cb0[106].x : r2.x;
  r2.x = 3.14100003 * r2.x;
  sincos(r2.x, r2.x, r8.x);
  r2.y = dot(r0.xyw, r0.xyw);
  r2.y = rsqrt(r2.y);
  r0.xyw = r2.yyy * r0.xyw;
  r8.yzw = r2.xxx * r0.xyw;
  r9.xyz = -r8.zwy * r7.zxy;
  r9.xyz = r7.yzx * -r8.wyz + -r9.xyz;
  r2.x = dot(r7.xyz, -r8.yzw);
  r9.w = -r2.x;
  r7.xyz = r8.xxx * r7.xyz;
  r7.w = 0;
  r7.xyzw = r9.xyzw + r7.xyzw;
  r9.xyz = r8.wyz * r7.yzx;
  r9.xyz = r8.zwy * r7.zxy + -r9.xyz;
  r7.xyz = r8.xxx * r7.xyz + r9.xyz;
  r7.xyz = r7.www * r8.yzw + r7.xyz;
  r8.xyz = r7.xyz * r4.xxx;
  r6.xyz = r7.xyz * r4.xxx + r6.xyz;
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyz = r3.xyz * r2.xxx;
  r2.x = dot(r8.xyz, r8.xyz);
  r2.x = rsqrt(r2.x);
  o1.xyz = r8.xyz * r2.xxx;
  r0.x = dot(r3.xyz, r0.xyw);
  r0.y = cb0[97].x * 0.0174532942;
  r0.w = cb0[98].x + cb0[97].x;
  r0.w = 0.0174532942 * r0.w;
  r0.yw = cos(r0.yw);
  r0.x = abs(r0.x) + -r0.y;
  r0.y = r0.w + -r0.y;
  r0.x = saturate(r0.x / r0.y);
  o0.y = r0.z ? cb0[106].x : cb0[107].x;
  r7.xyzw = cb12[1].xyzw * r6.yyyy;
  r7.xyzw = cb12[0].xyzw * r6.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r6.zzzz + r7.xyzw;
  r7.xyzw = cb12[3].xyzw + r7.xyzw;
  r0.x = cb0[119].x * r0.x;
  r0.y = cmp(0.999000013 < r3.w);
  o0.z = r0.y ? 0 : r0.x;
  o2.xyz = cb12[7].xyz + -r6.xyz;
  o0.w = r7.w;
  o0.x = r1.x;
  o5.xy = r2.zw;
  o5.zw = r1.yz;
  o6.xy = float2(0,0);
  o6.zw = r1.xw;
  o7.xyz = r5.xyz;
  o7.w = 0;
  o9.xyzw = r7.xyzw;
  o8.x = r5.w;
  o8.yz = r4.xy;
  return;
}